import 'package:welly/domain/entities/onboarding_answers.dart';
import 'package:welly/domain/repositories/user.repository.dart';
import 'package:welly/foundation/interfaces/future.usecases.dart';

/// Use case to get onboarding answers
class GetOnboardingAnswersUseCase extends FutureUseCase<OnboardingAnswers?> {
  /// Constructor
  GetOnboardingAnswersUseCase({required UserRepository userRepository})
    : _userRepository = userRepository;

  final UserRepository _userRepository;

  /// Execute the use case
  @override
  Future<OnboardingAnswers?> invoke() async {
    return _userRepository.getOnboardingAnswers();
  }
}
