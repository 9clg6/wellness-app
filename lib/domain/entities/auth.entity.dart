import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:welly/data/model/local/auth.local.model.dart';
import 'package:welly/data/model/remote/auth.remote.model.dart';

part 'auth.entity.freezed.dart';

/// Auth Entity
@freezed
abstract class AuthEntity with _$AuthEntity {
  /// Auth Entity constructor
  factory AuthEntity({String? token}) = _AuthEntity;

  /// fromLocal
  factory AuthEntity.fromLocal(AuthLocalModel authLocalModel) {
    return AuthEntity(token: authLocalModel.token);
  }

  /// fromRemote
  factory AuthEntity.fromRemote(AuthRemoteModel loginResult) {
    return AuthEntity(token: loginResult.token);
  }

}
