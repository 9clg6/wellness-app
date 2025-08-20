import 'package:starter_kit/domain/repositories/user.repository.dart';
import 'package:starter_kit/foundation/interfaces/future.usecases.dart';

/// Set on boarding as seen use case
final class SetOnBoardingAsSeenUseCase extends FutureUseCase<void> {
  /// Constructor
  SetOnBoardingAsSeenUseCase({required UserRepository userRepository})
    : _userRepository = userRepository;

  /// User repository
  final UserRepository _userRepository;

  @override
  Future<void> invoke() {
    return _userRepository.setOnBoardingAsSeen();
  }
}
