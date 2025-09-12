// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ai_analysis.remote.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AIAnalysisModel _$AIAnalysisModelFromJson(Map<String, dynamic> json) =>
    AIAnalysisModel(
      positiveElements: (json['positiveElements'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      tendance: json['tendance'] as String,
      improvementAxes: (json['improvement_axes'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      progressAnalysis: json['progress_analysis'] as String,
      conclusion: json['conclusion'] as String,
    );

Map<String, dynamic> _$AIAnalysisModelToJson(AIAnalysisModel instance) =>
    <String, dynamic>{
      'positiveElements': instance.positiveElements,
      'tendance': instance.tendance,
      'improvement_axes': instance.improvementAxes,
      'progress_analysis': instance.progressAnalysis,
      'conclusion': instance.conclusion,
    };
