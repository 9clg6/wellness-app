import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:welly/domain/entities/user.entity.dart';

part 'user.local.model.freezed.dart';
part 'user.local.model.g.dart';

/// User Local Model
@freezed
abstract class UserLocalModel with _$UserLocalModel {
  /// User Local Model constructor
  factory UserLocalModel({
    @JsonKey(name: 'id') required int? id,
    @JsonKey(name: 'email') required String? email,
    @JsonKey(name: 'nickname') required String? nickname,
    @JsonKey(name: 'lastname') required String? lastname,
    @JsonKey(name: 'firstname') required String? firstname,
    @JsonKey(name: 'isOnboardingCompleted')
    required bool? isOnboardingCompleted,
    @JsonKey(name: 'streakDays') required int streakDays,
  }) = _UserLocalModel;

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
}

/// Extension for UserLocalModel utilities
extension UserLocalModelExtension on UserLocalModel {
  /// Convert to domain entity
  UserEntity toEntity() => UserEntity(
    id: id,
    email: email,
    nickname: nickname,
    lastname: lastname,
    firstname: firstname,
    isOnboardingCompleted: isOnboardingCompleted,
    streakDays: streakDays,
  );
}
