import 'package:welly/domain/entities/auth.entity.dart';
import 'package:welly/domain/params/login.param.dart';
import 'package:welly/domain/repositories/authentication.repository.dart';
import 'package:welly/foundation/interfaces/future.usecases.dart';

/// Login Use Case
class LoginUseCase extends FutureUseCaseWithParams<AuthEntity, LoginParam> {
  /// Login Use Case constructor
  LoginUseCase({required AuthenticationRepository repository})
    : _repository = repository;

  /// repository
  final AuthenticationRepository _repository;

  @override
  Future<AuthEntity> invoke(LoginParam body) async {
    return _repository.login(body);
  }
}
