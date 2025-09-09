import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:starter_kit/data/model/local/user.local.model.dart';
import 'package:starter_kit/data/model/remote/user.remote.model.dart';

part 'user.entity.freezed.dart';

/// User Entity
@Freezed(copyWith: true)
class UserEntity with _$UserEntity {
  /// User Entity constructor
  UserEntity({
    this.id,
    this.email,
    this.nickname,
    this.lastname,
    this.firstname,
    this.isOnboardingCompleted,
    this.streakDays = 0,
  });

  /// fromLocal
  factory UserEntity.fromLocal(UserLocalModel userLocalModel) {
    return UserEntity(
      id: userLocalModel.id,
      email: userLocalModel.email,
      nickname: userLocalModel.nickname,
      lastname: userLocalModel.lastname,
      firstname: userLocalModel.firstname,
      isOnboardingCompleted: userLocalModel.isOnboardingCompleted,
      streakDays: userLocalModel.streakDays,
    );
  }

  /// fromRemote
  factory UserEntity.fromRemote(UserRemoteModel userRemoteModel) {
    return UserEntity(
      id: userRemoteModel.id,
      email: userRemoteModel.email,
      nickname: userRemoteModel.nickname,
      lastname: userRemoteModel.lastname,
      firstname: userRemoteModel.firstname,
    );
  }

  /// id
  @override
  final int? id;

  /// email
  @override
  final String? email;

  /// username
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

  @override
  String toString() {
    return 'User: $id - $email - $nickname - $lastname - $firstname';
  }
}
