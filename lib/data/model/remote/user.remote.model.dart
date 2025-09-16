import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.remote.model.freezed.dart';
part 'user.remote.model.g.dart';

/// User Remote Model
@freezed
abstract class UserRemoteModel with _$UserRemoteModel {
  /// User Remote Model constructor
  factory UserRemoteModel({
    int? id,
    String? email,
    String? nickname,
    String? lastname,
    String? firstname,
  }) = _UserRemoteModel;

  /// fromJson
  factory UserRemoteModel.fromJson(Map<String, dynamic> json) =>
      _$UserRemoteModelFromJson(json);
}
