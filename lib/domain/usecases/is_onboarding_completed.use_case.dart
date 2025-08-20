import 'package:starter_kit/domain/repositories/user.repository.dart';
import 'package:starter_kit/foundation/interfaces/future.usecases.dart';

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
