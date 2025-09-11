import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:starter_kit/core/extensions/date.extension.dart';
import 'package:starter_kit/domain/entities/happen_action.entity.dart';
import 'package:starter_kit/domain/usecases/clear_happen_actions.usecase.dart';
import 'package:starter_kit/domain/usecases/delete_happen_action_by_date.usecase.dart';
import 'package:starter_kit/domain/usecases/get_happen_actions.usecase.dart';
import 'package:starter_kit/domain/usecases/save_happen_action.usecase.dart';
import 'package:starter_kit/domain/usecases/save_happen_actions.usecase.dart';

/// Service to manage happen actions with persistence
class HappenActionService extends StateNotifier<List<HappenActionEntity>> {
  /// Constructor
  HappenActionService({
    required GetHappenActionsUseCase getHappenActionsUseCase,
    required SaveHappenActionUseCase saveHappenActionUseCase,
    required SaveHappenActionsUseCase saveHappenActionsUseCase,
    required ClearHappenActionsUseCase clearHappenActionsUseCase,
    required DeleteHappenActionByDateUseCase deleteHappenActionByDateUseCase,
  }) : _getHappenActionsUseCase = getHappenActionsUseCase,
       _saveHappenActionUseCase = saveHappenActionUseCase,
       _saveHappenActionsUseCase = saveHappenActionsUseCase,
       _clearHappenActionsUseCase = clearHappenActionsUseCase,
       _deleteHappenActionByDateUseCase = deleteHappenActionByDateUseCase,
       super(<HappenActionEntity>[]);

  /// Use cases
  final GetHappenActionsUseCase _getHappenActionsUseCase;
  final SaveHappenActionUseCase _saveHappenActionUseCase;
  final SaveHappenActionsUseCase _saveHappenActionsUseCase;
  final ClearHappenActionsUseCase _clearHappenActionsUseCase;
  final DeleteHappenActionByDateUseCase _deleteHappenActionByDateUseCase;

  /// Is today events filled
  bool isTodayEventsFilled = false;

  /// Get entries (for backward compatibility)
  List<HappenActionEntity> get entries => state;

  /// Load happen actions from storage
  Future<void> init() async {
    try {
      final List<HappenActionEntity> loadedActions =
          await _getHappenActionsUseCase.invoke();
      state = loadedActions;
    } on Exception catch (_) {
      state = <HappenActionEntity>[];
    }
  }

  /// Add entry
  Future<void> addEntry({
    required String happen,
    required String action,
  }) async {
    final HappenActionEntity newEntry = HappenActionEntity(
      happen: happen,
      action: action,
      date: DateTime.now(),
    );

    try {
      await _saveHappenActionUseCase.invoke(newEntry);
      state = <HappenActionEntity>[...state, newEntry];
    } catch (e) {
      // Handle error - could show a snackbar or log
      rethrow;
    }
  }

  /// Clear entries
  Future<void> clearEntries() async {
    try {
      await _clearHappenActionsUseCase.invoke();
      state = <HappenActionEntity>[];
    } catch (e) {
      // Handle error
      rethrow;
    }
  }

  /// Delete entry by date
  Future<void> deleteEntryByDate(DateTime date) async {
    try {
      await _deleteHappenActionByDateUseCase.invoke(date);
      state = state
          .where((HappenActionEntity entry) => !entry.date.isSameDate(date))
          .toList();
    } catch (e) {
      // Handle error
      rethrow;
    }
  }

  /// Save all entries (useful for batch operations)
  Future<void> saveAllEntries() async {
    try {
      await _saveHappenActionsUseCase.invoke(state);
    } catch (e) {
      // Handle error
      rethrow;
    }
  }
}
