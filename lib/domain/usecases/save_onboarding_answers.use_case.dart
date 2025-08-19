import 'package:starter_kit/domain/entities/onboarding_answers.dart';
import 'package:starter_kit/domain/repositories/user.repository.dart';

/// Use case to save onboarding answers
class SaveOnboardingAnswersUseCase {
  /// Constructor
  const SaveOnboardingAnswersUseCase(this._userRepository);

  final UserRepository _userRepository;

  /// Execute the use case
  Future<void> execute(OnboardingAnswers params) async {
    await _userRepository.saveOnboardingAnswers(params);
  }
}
