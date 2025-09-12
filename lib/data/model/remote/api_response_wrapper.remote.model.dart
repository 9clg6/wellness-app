import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:starter_kit/data/model/remote/ai_analysis.remote.model.dart';
import 'package:starter_kit/data/model/remote/api_message.remote.model.dart';

part 'api_response_wrapper.remote.model.freezed.dart';
part 'api_response_wrapper.remote.model.g.dart';

/// Model representing the complete API response wrapper
@freezed
@JsonSerializable()
class ApiResponseWrapper with _$ApiResponseWrapper {
  /// Constructor
  ApiResponseWrapper({required this.output});

  /// fromJson
  factory ApiResponseWrapper.fromJson(Map<String, dynamic> json) =>
      _$ApiResponseWrapperFromJson(json);

  /// toJson
  Map<String, dynamic> toJson() => _$ApiResponseWrapperToJson(this);

  /// Output messages array
  @override
  @JsonKey(name: 'output')
  final List<ApiMessageModel> output;

  /// AI Analysis extracted from the first valid message
  @JsonKey(includeFromJson: false, includeToJson: false)
  AIAnalysisModel? get aiAnalysis {
    if (output.isEmpty) return null;

    try {
      final ApiMessageModel message = output.firstWhere(
        (ApiMessageModel element) => element.content != null,
      );

      if (message.content is! List<dynamic>) return null;
      final List<dynamic> contentList = message.content as List<dynamic>;
      if (contentList.isEmpty) return null;

      final Map<String, dynamic>? contentBlock = contentList
          .whereType<Map<String, dynamic>>()
          .where((Map<String, dynamic> element) => element.containsKey('text'))
          .firstOrNull;

      if (contentBlock == null) return null;
      final String? textContent = contentBlock['text'] as String?;
      if (textContent == null) return null;

      return AIAnalysisModel.fromJson(
        jsonDecode(textContent) as Map<String, dynamic>,
      );
    } on Exception {
      return null;
    }
  }
}
