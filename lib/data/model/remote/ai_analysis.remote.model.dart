import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:starter_kit/domain/entities/ai_analysis.entity.dart';

part 'ai_analysis.remote.model.freezed.dart';
part 'ai_analysis.remote.model.g.dart';

/// Model representing AI analysis results from API
@freezed
@JsonSerializable()
class AIAnalysisModel with _$AIAnalysisModel {
  /// AI Analysis Model constructor
  AIAnalysisModel({
    required this.positiveElements,
    required this.tendance,
    required this.improvementAxes,
    required this.progressAnalysis,
    required this.conclusion,
  });

  /// fromJson
  factory AIAnalysisModel.fromJson(Map<String, dynamic> json) =>
      _$AIAnalysisModelFromJson(json);

  /// toEntity
  AIAnalysisEntity toEntity() => AIAnalysisEntity(
    positiveElements: positiveElements,
    tendance: tendance,
    improvementAxes: improvementAxes,
    progressAnalysis: progressAnalysis,
    conclusion: conclusion,
  );

  /// toJson
  Map<String, dynamic> toJson() => _$AIAnalysisModelToJson(this);

  @JsonKey(name: 'positiveElements')
  @override
  final List<String> positiveElements;

  @JsonKey(name: 'tendance')
  @override
  final String tendance;

  @JsonKey(name: 'improvement_axes')
  @override
  final List<String> improvementAxes;

  @JsonKey(name: 'progress_analysis')
  @override
  final String progressAnalysis;

  @JsonKey(name: 'conclusion')
  @override
  final String conclusion;
}
