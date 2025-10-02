import 'dart:async';

import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';
import 'package:welly/core/extensions/date.extension.dart';
import 'package:welly/core/providers/foundation/services/ai.service.dart';
import 'package:welly/domain/entities/ai_analysis.entity.dart';
import 'package:welly/domain/entities/daily_happen_action.entity.dart';
import 'package:welly/domain/entities/happen_action.entity.dart';
import 'package:welly/domain/usecases/clear_happen_actions.usecase.dart';
import 'package:welly/domain/usecases/delete_happen_action_by_date.usecase.dart';
import 'package:welly/domain/usecases/get_happen_actions.usecase.dart';
import 'package:welly/domain/usecases/save_happen_action.usecase.dart';
import 'package:welly/domain/usecases/save_happen_actions.usecase.dart';

/// Service to manage daily happen actions with persistence
class HappenActionService {
  /// Constructor
  HappenActionService({
    required GetHappenActionsUseCase getHappenActionsUseCase,
    required SaveHappenActionUseCase saveHappenActionUseCase,
    required SaveHappenActionsUseCase saveHappenActionsUseCase,
    required ClearHappenActionsUseCase clearHappenActionsUseCase,
    required DeleteHappenActionByDateUseCase deleteHappenActionByDateUseCase,
    required AiService aiService,
  }) : _getHappenActionsUseCase = getHappenActionsUseCase,
       _saveHappenActionUseCase = saveHappenActionUseCase,
       _saveHappenActionsUseCase = saveHappenActionsUseCase,
       _clearHappenActionsUseCase = clearHappenActionsUseCase,
       _deleteHappenActionByDateUseCase = deleteHappenActionByDateUseCase,
       _aiService = aiService;

  /// Use cases
  final GetHappenActionsUseCase _getHappenActionsUseCase;
  final SaveHappenActionUseCase _saveHappenActionUseCase;
  final SaveHappenActionsUseCase _saveHappenActionsUseCase;
  final ClearHappenActionsUseCase _clearHappenActionsUseCase;
  final DeleteHappenActionByDateUseCase _deleteHappenActionByDateUseCase;
  final AiService _aiService;

  /// Is today events filled
  bool isTodayEventsFilled = false;

  /// Internal subject holding the list of entries
  final BehaviorSubject<List<DailyHappenActionEntity>> _entriesSubject =
      BehaviorSubject<List<DailyHappenActionEntity>>.seeded(
        <DailyHappenActionEntity>[],
      );

  /// Stream public des entrées (ValueStream conserve la dernière valeur)
  ValueStream<List<DailyHappenActionEntity>> get entries$ =>
      _entriesSubject.stream;

  /// Getter/Setter de compatibilité remplaçant l'ancien `state`
  List<DailyHappenActionEntity> get state => _entriesSubject.value;
  set state(List<DailyHappenActionEntity> value) => _entriesSubject.add(value);

  /// Libère les ressources
  void dispose() {
    unawaited(_entriesSubject.close());
  }

  /// Get entries (for backward compatibility)
  List<DailyHappenActionEntity> get entries => state;

  /// Get today's daily happen action
  DailyHappenActionEntity? get todayDailyHappenAction {
    final DateTime today = DateTime.now();
    return state
        .where((DailyHappenActionEntity daily) => daily.date.isSameDate(today))
        .firstOrNull;
  }

  /// Get today's entry (only non-empty entries)
  List<HappenActionEntity> get todayEntry {
    final List<HappenActionEntity>? allActions =
        todayDailyHappenAction?.happenActions;
    if (allActions == null) {
      debugPrint('[HappenActionService] No today daily happen action found');
      return <HappenActionEntity>[];
    }

    final List<HappenActionEntity> filteredActions = allActions
        .where(
          (HappenActionEntity action) =>
              action.happen.isNotEmpty || action.action.isNotEmpty,
        )
        .toList();

    return filteredActions;
  }

  /// Load happen actions from storage
  Future<void> init() async {
    try {
      final List<DailyHappenActionEntity> loadedActions =
          await _getHappenActionsUseCase.invoke();
      state = loadedActions;

      // Check if today's events are filled
      final DateTime today = DateTime.now();
      final DailyHappenActionEntity? todayAction = loadedActions
          .where(
            (DailyHappenActionEntity daily) => daily.date.isSameDate(today),
          )
          .firstOrNull;

      if (todayAction != null) {
        final List<HappenActionEntity> todayEntries = todayAction.happenActions
            .where(
              (HappenActionEntity action) =>
                  action.happen.isNotEmpty || action.action.isNotEmpty,
            )
            .toList();
        isTodayEventsFilled = todayEntries.isNotEmpty;
      } else {
        isTodayEventsFilled = false;
      }
    } on Exception catch (e, s) {
      debugPrint('[HappenActionService] Initialization error: $e');
      unawaited(FirebaseCrashlytics.instance.recordError(e, s));
      state = <DailyHappenActionEntity>[];
      isTodayEventsFilled = false;
    }
  }

  /// Add entry to today's daily happen action
  Future<void> addEntry({
    required String happen,
    required String action,
    int? index,
  }) async {
    final DateTime today = DateTime.now();
    final DailyHappenActionEntity? existingToday = state
        .where((DailyHappenActionEntity daily) => daily.date.isSameDate(today))
        .firstOrNull;

    final HappenActionEntity newHappenAction = HappenActionEntity(
      happen: happen,
      action: action,
    );

    DailyHappenActionEntity updatedToday;
    if (existingToday != null) {
      // Update existing today's entry
      // Find the first empty slot if no index is provided
      final int targetIndex =
          index ?? _findFirstEmptySlot(existingToday.happenActions);
      updatedToday = existingToday.updateHappenAction(
        targetIndex,
        newHappenAction,
      );

      // Replace in state
      state = state
          .map(
            (DailyHappenActionEntity daily) =>
                daily.date.isSameDate(today) ? updatedToday : daily,
          )
          .toList();
    } else {
      // Create new today's entry
      updatedToday = DailyHappenActionEntity.create(
        date: today,
        first: index == 0
            ? newHappenAction
            : HappenActionEntity(happen: '', action: ''),
        second: index == 1
            ? newHappenAction
            : HappenActionEntity(happen: '', action: ''),
        third: index == 2
            ? newHappenAction
            : HappenActionEntity(happen: '', action: ''),
      );

      state = <DailyHappenActionEntity>[...state, updatedToday];
    }

    try {
      await _saveHappenActionUseCase.invoke(updatedToday);
    } on Exception catch (e, s) {
      debugPrint('[HappenActionService] Error saving happen action: $e');
      unawaited(FirebaseCrashlytics.instance.recordError(e, s));
      // Don't rethrow to prevent app crash
    }
  }

  /// Update specific happen action in today's entry
  Future<void> updateTodayHappenAction(
    int index,
    HappenActionEntity happenAction,
  ) async {
    final DateTime today = DateTime.now();
    final DailyHappenActionEntity? existingToday = state
        .where((DailyHappenActionEntity daily) => daily.date.isSameDate(today))
        .firstOrNull;

    if (existingToday != null) {
      final DailyHappenActionEntity updatedToday = existingToday
          .updateHappenAction(index, happenAction);
      state = state
          .map(
            (DailyHappenActionEntity daily) =>
                daily.date.isSameDate(today) ? updatedToday : daily,
          )
          .toList();

      try {
        await _saveHappenActionUseCase.invoke(updatedToday);
      } on Exception catch (e, s) {
        debugPrint('[HappenActionService] Error updating happen action: $e');
        unawaited(FirebaseCrashlytics.instance.recordError(e, s));
        // Don't rethrow to prevent app crash
      }
    }
  }

  /// Clear entries
  Future<void> clearEntries() async {
    try {
      await _clearHappenActionsUseCase.invoke();
      state = <DailyHappenActionEntity>[];
    } on Exception catch (e, s) {
      debugPrint('[HappenActionService] Error clearing entries: $e');
      unawaited(FirebaseCrashlytics.instance.recordError(e, s));
      // Don't rethrow to prevent app crash
    }
  }

  /// Delete entry by date
  Future<void> deleteEntryByDate(DateTime date) async {
    try {
      await _deleteHappenActionByDateUseCase.invoke(date);
      state = state
          .where(
            (DailyHappenActionEntity entry) => !entry.date.isSameDate(date),
          )
          .toList();
    } on Exception catch (e, s) {
      debugPrint('[HappenActionService] Error deleting entry by date: $e');
      unawaited(FirebaseCrashlytics.instance.recordError(e, s));
      // Don't rethrow to prevent app crash
    }
  }

  /// Save all entries (useful for batch operations)
  Future<void> saveAllEntries() async {
    try {
      await _saveHappenActionsUseCase.invoke(state);
    } on Exception catch (e, s) {
      debugPrint('[HappenActionService] Error saving all entries: $e');
      unawaited(FirebaseCrashlytics.instance.recordError(e, s));
      // Don't rethrow to prevent app crash
    }
  }

  /// Analyze with AI and save report for current period
  Future<AIAnalysisEntity> analyzeWithAiAndSaveReport() async {
    final List<DailyHappenActionEntity> last7DaysData = _aiService
        .getLast7DaysData(state);

    return _aiService.analyzeWithAIAndSaveReport(last7DaysData);
  }

  /// Get current period report if exists
  Future<AIAnalysisEntity?> getCurrentPeriodReport() async {
    return _aiService.getCurrentPeriodReport();
  }

  /// Check if current period report exists
  Future<bool> hasCurrentPeriodReport() async {
    return _aiService.hasCurrentPeriodReport();
  }

  /// Mark today's events as filled
  void markTodayEventsAsFilled() {
    isTodayEventsFilled = true;
  }

  /// Find the first empty slot in the happen actions list
  int _findFirstEmptySlot(List<HappenActionEntity> actions) {
    for (int i = 0; i < 3; i++) {
      if (i >= actions.length) return i;
      final HappenActionEntity action = actions[i];
      if (action.happen.isEmpty && action.action.isEmpty) {
        return i;
      }
    }
    return 0; // Default to first slot if all are filled
  }
}
