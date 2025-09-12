// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analyze_with_ai_param.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AnalyzeWithAIParam _$AnalyzeWithAIParamFromJson(Map<String, dynamic> json) =>
    AnalyzeWithAIParam(
      prompt: PromptConfig.fromJson(json['prompt'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AnalyzeWithAIParamToJson(AnalyzeWithAIParam instance) =>
    <String, dynamic>{'prompt': instance.prompt};

PromptConfig _$PromptConfigFromJson(Map<String, dynamic> json) => PromptConfig(
  id: json['id'] as String,
  variables: Map<String, String>.from(json['variables'] as Map),
  version: json['version'] as String,
);

Map<String, dynamic> _$PromptConfigToJson(PromptConfig instance) =>
    <String, dynamic>{
      'id': instance.id,
      'version': instance.version,
      'variables': instance.variables,
    };
