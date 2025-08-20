import 'package:starter_kit/domain/entities/onboarding_answers.dart';
import 'package:starter_kit/domain/repositories/user.repository.dart';
import 'package:starter_kit/foundation/interfaces/future.usecases.dart';

/// Use case to get onboarding answers
class GetOnboardingAnswersUseCase extends FutureUseCase<OnboardingAnswers?> {
  /// Constructor
  GetOnboardingAnswersUseCase(this._userRepository);

  final UserRepository _userRepository;

  /// Execute the use case
  @override
  Future<OnboardingAnswers?> invoke() async {
    return _userRepository.getOnboardingAnswers();
  }
}
