import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:starter_kit/domain/entities/user.entity.dart';

part 'user.local.model.freezed.dart';
part 'user.local.model.g.dart';

/// User Local Model
@freezed
@JsonSerializable()
final class UserLocalModel with _$UserLocalModel {
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

  /// is onboarding completed
  @override
  final bool? isOnboardingCompleted;

  /// streak days
  @override
  final int streakDays;
}
