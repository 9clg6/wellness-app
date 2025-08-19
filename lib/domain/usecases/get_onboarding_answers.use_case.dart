import 'package:starter_kit/domain/entities/onboarding_answers.dart';
import 'package:starter_kit/domain/repositories/user.repository.dart';

/// Use case to get onboarding answers
class GetOnboardingAnswersUseCase {
  /// Constructor
  const GetOnboardingAnswersUseCase(this._userRepository);

  final UserRepository _userRepository;

  /// Execute the use case
  Future<OnboardingAnswers?> execute() async {
    return _userRepository.getOnboardingAnswers();
  }
}
