import 'package:freezed_annotation/freezed_annotation.dart';

part 'ai_analysis.entity.freezed.dart';

/// Entity representing AI analysis results
@freezed
class AIAnalysisEntity with _$AIAnalysisEntity {
  /// Constructor
  AIAnalysisEntity({
    required this.positiveElements,
    required this.tendance,
    required this.improvementAxes,
    required this.progressAnalysis,
    required this.conclusion,
  });

  /// Positive elements identified in the analysis
  @override
  final List<String> positiveElements;

  /// Overall trend analysis
  @override
  final String tendance;

  /// Areas for improvement
  @override
  final List<String> improvementAxes;

  /// Progress analysis
  @override
  final String progressAnalysis;

  /// Final conclusion and recommendations
  @override
  final String conclusion;
}
