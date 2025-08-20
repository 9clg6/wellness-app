import 'package:starter_kit/domain/entities/onboarding_answers.dart';
import 'package:starter_kit/domain/repositories/user.repository.dart';
import 'package:starter_kit/foundation/interfaces/future.usecases.dart';

/// Use case to save onboarding answers
class SaveOnboardingAnswersUseCase
    extends FutureUseCaseWithParams<void, OnboardingAnswers> {
  /// Constructor
  SaveOnboardingAnswersUseCase({required UserRepository userRepository})
    : _userRepository = userRepository;

  final UserRepository _userRepository;

  /// Execute the use case
  @override
  Future<void> invoke(OnboardingAnswers params) async {
    await _userRepository.saveOnboardingAnswers(params);
  }
}
