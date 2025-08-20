import 'package:starter_kit/domain/entities/user.entity.dart';
import 'package:starter_kit/domain/repositories/user.repository.dart';

/// Use case to save user
class SaveUserUseCase {
  /// Constructor
  const SaveUserUseCase(this._userRepository);

  final UserRepository _userRepository;

  /// Execute the use case
  Future<void> execute(UserEntity params) async {
    await _userRepository.saveUser(params);
  }
}
