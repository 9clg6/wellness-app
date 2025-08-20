import 'package:starter_kit/domain/entities/user.entity.dart';
import 'package:starter_kit/domain/repositories/user.repository.dart';
import 'package:starter_kit/foundation/interfaces/future.usecases.dart';

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
