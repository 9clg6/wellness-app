import 'package:welly/data/model/local/ai_analysis_report.local_model.dart';

/// Data source interface for AI analysis reports
abstract class AIAnalysisReportLocalDataSource {
  /// Save AI analysis report
  Future<void> saveReport(AIAnalysisReportLocalModel report);

  /// Get latest saved report
  Future<AIAnalysisReportLocalModel?> getLatestReport();

  /// Get all reports
  Future<List<AIAnalysisReportLocalModel>> getAllReports();

  /// Get current period report (last 7 days)
  Future<AIAnalysisReportLocalModel?> getCurrentPeriodReport({
    DateTime? referenceDate,
  });

  /// Get reports for a specific date range
  Future<List<AIAnalysisReportLocalModel>> getReportsForDateRange({
    required DateTime startDate,
    required DateTime endDate,
  });

  /// Check if current period report exists
  Future<bool> hasCurrentPeriodReport({DateTime? referenceDate});

  /// Delete reports for a specific date range
  Future<void> deleteReportsForDateRange({
    required DateTime startDate,
    required DateTime endDate,
  });

  /// Clear all reports
  Future<void> clearAllReports();
}
