import 'package:welly/domain/entities/user.entity.dart';
import 'package:welly/domain/repositories/user.repository.dart';
import 'package:welly/foundation/interfaces/future.usecases.dart';

/// Use case to save user
class SaveUserUseCase extends FutureUseCaseWithParams<void, UserEntity> {
  /// Constructor
  SaveUserUseCase({required UserRepository userRepository})
    : _userRepository = userRepository;

  final UserRepository _userRepository;

  /// Execute the use case
  @override
  Future<void> invoke(UserEntity params) async {
    await _userRepository.saveUser(params);
  }
}
