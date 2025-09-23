import 'package:welly/domain/repositories/user.repository.dart';
import 'package:welly/foundation/interfaces/future.usecases.dart';

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
