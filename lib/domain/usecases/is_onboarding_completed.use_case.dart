import 'package:welly/domain/repositories/user.repository.dart';
import 'package:welly/foundation/interfaces/future.usecases.dart';

/// Use case to check if onboarding is completed
class IsOnboardingCompletedUseCase extends FutureUseCase<bool> {
  /// Constructor
  IsOnboardingCompletedUseCase({required UserRepository userRepository})
    : _userRepository = userRepository;

  final UserRepository _userRepository;

  /// Execute the use case
  @override
  Future<bool> invoke() async {
    return _userRepository.isOnboardingCompleted();
  }
}
