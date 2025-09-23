import 'package:welly/domain/entities/auth.entity.dart';
import 'package:welly/domain/repositories/authentication.repository.dart';
import 'package:welly/foundation/interfaces/future.usecases.dart';

/// Get auth use case
class GetAuthUseCase extends FutureUseCase<AuthEntity?> {
  /// Constructor
  GetAuthUseCase({required AuthenticationRepository authenticationRepository})
    : _authenticationRepository = authenticationRepository;

  /// Get authentication repository
  final AuthenticationRepository _authenticationRepository;

  /// Invoke
  @override
  Future<AuthEntity?> invoke() async {
    return _authenticationRepository.getSavedUser();
  }
}
