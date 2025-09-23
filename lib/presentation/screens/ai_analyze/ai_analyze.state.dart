import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:welly/domain/entities/ai_analysis.entity.dart';

part 'ai_analyze.state.freezed.dart';

/// Ai analyze state
@freezed
abstract class AiAnalyzeState with _$AiAnalyzeState {
  /// Constructor
  const factory AiAnalyzeState({required AIAnalysisEntity report}) =
      _AiAnalyzeState;

  /// Initial state
  factory AiAnalyzeState.initial({required AIAnalysisEntity report}) =>
      AiAnalyzeState(report: report);
}

/// Extension on AiAnalyzeState
extension AiAnalyzeStateExtension on AiAnalyzeState {
  /// Returns the date interval of the report in format "dd/MM/yyyy - dd/MM/yyyy"
  String get dateInterval {
    if (report.startDate == null || report.endDate == null) {
      return '';
    }

    final String start =
        "${report.startDate!.day.toString().padLeft(2, '0')}/${report.startDate!.month.toString().padLeft(2, '0')}/${report.startDate!.year}";
    final String end =
        "${report.endDate!.day.toString().padLeft(2, '0')}/${report.endDate!.month.toString().padLeft(2, '0')}/${report.endDate!.year}";

    return 'Du $start au $end';
  }
}
