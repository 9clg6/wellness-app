import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:starter_kit/data/model/local/user.local.model.dart';
import 'package:starter_kit/data/model/remote/user.remote.model.dart';

part 'user.entity.freezed.dart';

/// User Entity
@freezed
abstract class UserEntity with _$UserEntity {
  /// User Entity constructor
  factory UserEntity({
    int? id,
    String? email,
    String? nickname,
    String? lastname,
    String? firstname,
    bool? isOnboardingCompleted,
    @Default(0) int streakDays,
  }) = _UserEntity;

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


  @override
  String toString() {
    return 'User: $id - $email - $nickname - $lastname - $firstname';
  }
}
