import 'package:json_annotation/json_annotation.dart';
import 'package:starter_kit/domain/entities/user.entity.dart';

part 'user.local.model.g.dart';

/// User Local Model
@JsonSerializable()
final class UserLocalModel {
  /// User Local Model constructor
  UserLocalModel({
    this.id,
    this.email,
    this.nickname,
    this.lastname,
    this.firstname,
    this.isOnboardingCompleted,
    this.streakDays = 0,
  });

  /// fromEntity
  factory UserLocalModel.fromEntity(UserEntity user) => UserLocalModel(
    id: user.id,
    email: user.email,
    nickname: user.nickname,
    lastname: user.lastname,
    firstname: user.firstname,
    isOnboardingCompleted: user.isOnboardingCompleted,
    streakDays: user.streakDays,
  );

  /// fromJson
  factory UserLocalModel.fromJson(Map<String, dynamic> json) =>
      _$UserLocalModelFromJson(json);

  /// toJson
  Map<String, dynamic> toJson() => _$UserLocalModelToJson(this);

  /// toEntity
  UserEntity toEntity() => UserEntity(
    id: id,
    email: email,
    nickname: nickname,
    lastname: lastname,
    firstname: firstname,
    isOnboardingCompleted: isOnboardingCompleted,
    streakDays: streakDays,
  );

  /// id
  final int? id;

  /// email
  final String? email;

  /// nickname
  final String? nickname;

  /// lastname
  final String? lastname;

  /// firstname
  final String? firstname;

  /// is onboarding completed
  final bool? isOnboardingCompleted;

  /// streak days
  final int streakDays;
}
