import 'package:welly/domain/entities/auth.entity.dart';
import 'package:welly/domain/repositories/authentication.repository.dart';
import 'package:welly/foundation/interfaces/future.usecases.dart';

/// Save Auth Use Case
class SaveAuthUseCase extends FutureUseCaseWithParams<void, AuthEntity> {
  /// Save Auth Use Case constructor
  SaveAuthUseCase({required AuthenticationRepository repository})
    : _repository = repository;

  ///
  final AuthenticationRepository _repository;

  @override
  Future<void> invoke(AuthEntity params) async {
    await _repository.saveAuth(params);
  }
}
