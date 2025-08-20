import 'package:starter_kit/domain/repositories/user.repository.dart';
import 'package:starter_kit/foundation/interfaces/future.usecases.dart';

/// Use case to set onboarding as completed
class SetOnboardingCompletedUseCase extends FutureUseCase<void> {
  /// Constructor
  SetOnboardingCompletedUseCase({required UserRepository userRepository})
    : _userRepository = userRepository;

  final UserRepository _userRepository;

  /// Execute the use case
  @override
  Future<void> invoke() async {
    await _userRepository.setOnboardingCompleted();
  }
}
