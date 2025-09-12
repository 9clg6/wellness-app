import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_message.remote.model.freezed.dart';
part 'api_message.remote.model.g.dart';

/// Model representing a message in the API response output array
@freezed
@JsonSerializable()
class ApiMessageModel with _$ApiMessageModel {
  /// Constructor
  ApiMessageModel({required this.content});

  /// fromJson
  factory ApiMessageModel.fromJson(Map<String, dynamic> json) =>
      _$ApiMessageModelFromJson(json);

  /// toJson
  Map<String, dynamic> toJson() => _$ApiMessageModelToJson(this);

  /// Message content - can be string or array of content blocks
  @override
  @JsonKey(name: 'content')
  final dynamic content;
}
