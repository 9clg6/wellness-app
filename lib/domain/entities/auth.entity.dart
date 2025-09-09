import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:starter_kit/data/model/local/auth.local.model.dart';
import 'package:starter_kit/data/model/remote/auth.remote.model.dart';

part 'auth.entity.freezed.dart';

/// Auth Entity
@Freezed(copyWith: true)
final class AuthEntity with _$AuthEntity {
  /// Auth Entity constructor
  AuthEntity({this.token});

  /// fromLocal
  factory AuthEntity.fromLocal(AuthLocalModel authLocalModel) {
    return AuthEntity(token: authLocalModel.token);
  }

  /// fromRemote
  factory AuthEntity.fromRemote(AuthRemoteModel loginResult) {
    return AuthEntity(token: loginResult.token);
  }

  /// token
  @override
  final String? token;
}
