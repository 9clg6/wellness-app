import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.remote.model.freezed.dart';
part 'user.remote.model.g.dart';

/// User Remote Model
@freezed
@JsonSerializable()
final class UserRemoteModel with _$UserRemoteModel {
  /// User Remote Model constructor
  UserRemoteModel({
    this.id,
    this.email,
    this.nickname,
    this.lastname,
    this.firstname,
  });

  /// fromJson
  factory UserRemoteModel.fromJson(Map<String, dynamic> json) =>
      _$UserRemoteModelFromJson(json);

  /// toJson
  Map<String, dynamic> toJson() => _$UserRemoteModelToJson(this);

  /// id
  @override
  final int? id;

  /// email
  @override
  final String? email;

  /// nickname
  @override
  final String? nickname;

  /// lastname
  @override
  final String? lastname;

  /// firstname
  @override
  final String? firstname;
}
