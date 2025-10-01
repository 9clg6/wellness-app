// ignore_for_file: lines_longer_than_80_chars ntm

import 'dart:async';

import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:rxdart/rxdart.dart';
import 'package:welly/core/extensions/date.extension.dart';
import 'package:welly/data/bodies/analyze_with_ai_param.dart';
import 'package:welly/domain/entities/ai_analysis.entity.dart';
import 'package:welly/domain/entities/daily_happen_action.entity.dart';
import 'package:welly/domain/usecases/analyze_with_ai.usecase.dart';
import 'package:welly/domain/usecases/get_current_period_report.usecase.dart';
import 'package:welly/domain/usecases/save_ai_analysis_report.usecase.dart';

/// Service for AI analysis operations
final class AiService {
  /// Constructor
  AiService(
    this._analyzeWithAIUseCase,
    this._saveAIAnalysisReportUseCase,
    this._getCurrentPeriodReportUseCase,
  );

  final AnalyzeWithAIUseCase _analyzeWithAIUseCase;
  final SaveAIAnalysisReportUseCase _saveAIAnalysisReportUseCase;
  final GetCurrentPeriodReportUseCase _getCurrentPeriodReportUseCase;

  /// Stream controller for report existence
  final BehaviorSubject<bool> _reportExistsController =
      BehaviorSubject<bool>.seeded(false);

  /// Stream that indicates if a report exists
  Stream<bool> get reportExistsStream => _reportExistsController.stream;

  /// Get report existence
  bool get reportExists => _reportExistsController.value;

  /// Get last report if available and current
  AIAnalysisEntity? get lastReport => _lastReport;

  /// Initialize AI service and check for existing reports
  Future<void> init() async {
    try {
      // Get the current period report if exists and is valid
      final AIAnalysisEntity? existingReport = await getCurrentPeriodReport();
      if (existingReport != null) {
        _lastReport = existingReport;
        _updateReportExistence(true);
      } else {
        // No valid report exists for current period
        _lastReport = null;
        _updateReportExistence(false);
      }
    } on Exception catch (e, s) {
      unawaited(FirebaseCrashlytics.instance.recordError(e, s));
      _lastReport = null;
      _updateReportExistence(false);
      rethrow;
    }
  }

  /// Version of the prompt
  static const int version = 12;

  /// Last report cached to avoid repeated local storage calls
  AIAnalysisEntity? _lastReport;

  /// Analyze with AI
  Future<AIAnalysisEntity> analyzeWithAI(
    List<DailyHappenActionEntity> events,
  ) async {
    final AIAnalysisEntity baseAnalysis = await _analyzeWithAIUseCase.invoke(
      AnalyzeWithAIParam(
        prompt: PromptConfig(
          id: const String.fromEnvironment('PROMPT_ID'),
          variables: _formatEvents(events),
          version: version.toString(),
        ),
      ),
    );

    // Add metadata extracted from events
    final AIAnalysisEntity analysisWithMetadata = _createAnalysisWithMetadata(
      baseAnalysis,
      events,
    );

    _lastReport = analysisWithMetadata;
    _updateReportExistence(true);

    return analysisWithMetadata;
  }

  /// Analyze with AI and save report for current period
  Future<AIAnalysisEntity> analyzeWithAIAndSaveReport(
    List<DailyHappenActionEntity> events,
  ) async {
    // Check if we already have a cached report for current period
    if (_lastReport != null && isCurrentPeriod(_lastReport!)) {
      return _lastReport!;
    }

    // Check if report already exists for current period
    final AIAnalysisEntity? existingReport = await getCurrentPeriodReport();
    if (existingReport != null) {
      _lastReport = existingReport;
      return existingReport;
    }

    // Generate AI analysis with metadata
    final AIAnalysisEntity analysis = await analyzeWithAI(events);

    // Save report
    await _saveAIAnalysisReportUseCase.invoke(analysis);

    // Update stream state
    _updateReportExistence(true);
    _lastReport = analysis;

    return analysis;
  }

  /// Get current period report if exists and is valid
  Future<AIAnalysisEntity?> getCurrentPeriodReport() async {
    // Check cached report first
    if (_lastReport != null && isCurrentPeriod(_lastReport!)) {
      return _lastReport;
    }

    final AIAnalysisEntity? report = await _getCurrentPeriodReportUseCase
        .invoke(null);

    if (report != null && report.startDate != null && report.endDate != null) {
      // Verify if the report is still current
      if (isCurrentPeriod(report)) {
        _lastReport = report;
        return report;
      }
    }

    return null;
  }

  /// Check if current period report exists and is valid
  Future<bool> hasCurrentPeriodReport() async {
    // Check cached report first
    if (_lastReport != null && isCurrentPeriod(_lastReport!)) {
      return true;
    }

    // Get current period report - if null, no valid report exists
    final AIAnalysisEntity? report = await getCurrentPeriodReport();

    if (report != null) {
      _lastReport = report;
      return true;
    }

    return false;
  }

  /// Update report existence state and emit to stream
  void _updateReportExistence(bool exists) {
    _reportExistsController.add(exists);
  }

  /// Dispose resources
  void dispose() {
    _reportExistsController.close();
  }

  /// Get last 7 days of data for analysis
  List<DailyHappenActionEntity> getLast7DaysData(
    List<DailyHappenActionEntity> allEvents,
  ) {
    final DateTime now = DateTime.now();
    final DateTime startDate = now.subtract(const Duration(days: 7));

    return allEvents.where((DailyHappenActionEntity daily) {
      final DateTime dateOnly = daily.date.dateWithoutTime;
      final DateTime startOnly = startDate.dateWithoutTime;
      final DateTime nowOnly = now.dateWithoutTime;

      return (dateOnly.isAfterOrEqual(startOnly) &&
              dateOnly.isBeforeOrEqual(nowOnly)) &&
          daily.isComplete;
    }).toList();
  }

  /// Create analysis with metadata extracted from data
  AIAnalysisEntity _createAnalysisWithMetadata(
    AIAnalysisEntity baseAnalysis,
    List<DailyHappenActionEntity> events,
  ) {
    if (events.isEmpty) {
      throw Exception('No events to create analysis with metadata');
    }

    // Extract dates from the events
    final List<DateTime> dates =
        events.map((DailyHappenActionEntity e) => e.date).toList()..sort();

    final DateTime startDate = dates.first;
    final DateTime endDate = dates.last;
    final DateTime now = DateTime.now();

    // Generate ID from dates
    final String id = _generateIdFromDates(startDate, endDate);

    return AIAnalysisEntity(
      statsConfiance: baseAnalysis.statsConfiance,
      categorieDominante: baseAnalysis.categorieDominante,
      humeurGenerale: baseAnalysis.humeurGenerale,
      momentMarquant: baseAnalysis.momentMarquant,
      progressionSemaine: baseAnalysis.progressionSemaine,
      analyseGlobale: baseAnalysis.analyseGlobale,
      suggestions: baseAnalysis.suggestions,
      id: id,
      startDate: startDate,
      endDate: endDate,
      createdAt: now,
    );
  }

  /// Generate ID from start and end dates
  String _generateIdFromDates(DateTime startDate, DateTime endDate) {
    final String startStr =
        '${startDate.year}-${startDate.month.toString().padLeft(2, '0')}-${startDate.day.toString().padLeft(2, '0')}';
    final String endStr =
        '${endDate.year}-${endDate.month.toString().padLeft(2, '0')}-${endDate.day.toString().padLeft(2, '0')}';
    return '${startStr}_to_$endStr';
  }

  /// Check if a specific date is covered by this report
  bool containsDate(AIAnalysisEntity report, DateTime date) {
    if (report.startDate == null || report.endDate == null) return false;

    final DateTime dateOnly = date.dateWithoutTime;
    final DateTime startOnly = report.startDate!.dateWithoutTime;
    final DateTime endOnly = report.endDate!.dateWithoutTime;

    return dateOnly.isAfterOrEqual(startOnly) &&
        dateOnly.isBeforeOrEqual(endOnly);
  }

  /// Check if this report covers the current 7-day period
  bool isCurrentPeriod(AIAnalysisEntity report) {
    if (report.startDate == null || report.endDate == null) return false;

    final DateTime now = DateTime.now();
    final DateTime currentStart = now.subtract(const Duration(days: 6));

    final DateTime currentStartOnly = currentStart.dateWithoutTime;
    final DateTime nowOnly = now.dateWithoutTime;
    final DateTime reportStartOnly = report.startDate!.dateWithoutTime;
    final DateTime reportEndOnly = report.endDate!.dateWithoutTime;

    // Consider "current" if the report overlaps the last 7 days window
    // Overlap condition: reportStart <= now AND reportEnd >= currentStart
    final bool startsBeforeOrToday = reportStartOnly.isBeforeOrEqual(nowOnly);
    final bool endsAfterOrAtWindowStart = reportEndOnly.isAfterOrEqual(
      currentStartOnly,
    );

    return startsBeforeOrToday && endsAfterOrAtWindowStart;
  }

  Map<String, String> _formatEvents(List<DailyHappenActionEntity> events) {
    final StringBuffer buffer = StringBuffer();
    for (int i = 0; i < events.length; i++) {
      final DailyHappenActionEntity e = events[i];
      buffer
        ..writeln('Jour ${i + 1}:\n')
        ..writeln('- Chose positive 1: ${e.happenActions[0].happen}')
        ..writeln('- Action 1: ${e.happenActions[0].action}')
        ..writeln('\n')
        ..writeln('- Chose positive 2: ${e.happenActions[1].happen}')
        ..writeln('- Action 2: ${e.happenActions[1].action}')
        ..writeln('\n')
        ..writeln('- Chose positive 3: ${e.happenActions[2].happen}')
        ..writeln('- Action 3: ${e.happenActions[2].action}')
        ..writeln();
    }
    return <String, String>{
      'userevents':
          "Analyses les événements de l'utilisateur en suivant les instructions système et réponds **uniquement** en format JSON valide. Voici les événements: $buffer",
    };
  }
}
