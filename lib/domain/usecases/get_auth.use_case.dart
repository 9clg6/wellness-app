import 'package:starter_kit/domain/entities/auth.entity.dart';
import 'package:starter_kit/domain/repositories/authentication.repository.dart';
import 'package:starter_kit/foundation/interfaces/future.usecases.dart';

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
