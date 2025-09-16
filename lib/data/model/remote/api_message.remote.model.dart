import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_message.remote.model.freezed.dart';
part 'api_message.remote.model.g.dart';

/// Model representing a message in the API response output array
@freezed
abstract class ApiMessageModel with _$ApiMessageModel {
  /// Constructor
  factory ApiMessageModel({
    @JsonKey(name: 'content') required dynamic content,
  }) = _ApiMessageModel;

  /// fromJson
  factory ApiMessageModel.fromJson(Map<String, dynamic> json) =>
      _$ApiMessageModelFromJson(json);
}
