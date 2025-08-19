import 'package:starter_kit/domain/repositories/user.repository.dart';

/// Use case to set onboarding as completed
class SetOnboardingCompletedUseCase {
  /// Constructor
  const SetOnboardingCompletedUseCase(this._userRepository);

  final UserRepository _userRepository;

  /// Execute the use case
  Future<void> execute() async {
    await _userRepository.setOnboardingCompleted();
  }
}
