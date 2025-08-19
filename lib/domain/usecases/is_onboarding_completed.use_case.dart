import 'package:starter_kit/domain/repositories/user.repository.dart';

/// Use case to check if onboarding is completed
class IsOnboardingCompletedUseCase {
  /// Constructor
  const IsOnboardingCompletedUseCase(this._userRepository);

  final UserRepository _userRepository;

  /// Execute the use case
  Future<bool> execute() async {
    return _userRepository.isOnboardingCompleted();
  }
}
