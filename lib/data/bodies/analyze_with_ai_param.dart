import 'package:freezed_annotation/freezed_annotation.dart';

part 'analyze_with_ai_param.g.dart';

/// Analyze with AI param
@JsonSerializable(fieldRename: FieldRename.snake)
final class AnalyzeWithAIParam {
  /// Analyze with AI param constructor
  const AnalyzeWithAIParam({required this.prompt});

  /// From json
  factory AnalyzeWithAIParam.fromJson(Map<String, dynamic> json) =>
      _$AnalyzeWithAIParamFromJson(json);

  /// Prompt configuration
  final PromptConfig prompt;

  /// To json
  Map<String, dynamic> toJson() => _$AnalyzeWithAIParamToJson(this);
}

/// Prompt configuration
@JsonSerializable(fieldRename: FieldRename.snake)
final class PromptConfig {
  /// Prompt configuration constructor
  const PromptConfig({
    required this.id,
    required this.variables,
    required this.version,
  });

  /// From json
  factory PromptConfig.fromJson(Map<String, dynamic> json) =>
      _$PromptConfigFromJson(json);

  /// Prompt ID
  final String id;

  /// Version
  final String version;

  /// Variables for the prompt
  final Map<String, String> variables;

  /// To json
  Map<String, dynamic> toJson() => _$PromptConfigToJson(this);
}
