import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:starter_kit/domain/entities/ai_analysis.entity.dart';

part 'ai_analyze.state.freezed.dart';

/// Ai analyze state
@Freezed(copyWith: true)
final class AiAnalyzeState with _$AiAnalyzeState {
  /// Constructor
  const AiAnalyzeState({required this.report});

  /// Initial state
  factory AiAnalyzeState.initial({required AIAnalysisEntity report}) {
    return AiAnalyzeState(report: report);
  }

  /// Report
  @override
  final AIAnalysisEntity report;
}
