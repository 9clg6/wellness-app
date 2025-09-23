import 'package:welly/domain/repositories/authentication.repository.dart';
import 'package:welly/foundation/interfaces/future.usecases.dart';

/// Logout Use Case
class LogoutUseCase extends FutureUseCase<void> {
  /// Logout Use Case constructor
  LogoutUseCase({required AuthenticationRepository repository})
    : _repository = repository;

  /// repository
  final AuthenticationRepository _repository;

  @override
  Future<void> invoke() async {
    return _repository.deleteAuth();
  }
}
