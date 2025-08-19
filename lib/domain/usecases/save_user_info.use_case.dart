import 'package:starter_kit/domain/entities/user_info.entity.dart';
import 'package:starter_kit/domain/repositories/user.repository.dart';

/// Use case to save user info
class SaveUserInfoUseCase {
  /// Constructor
  const SaveUserInfoUseCase(this._userRepository);

  final UserRepository _userRepository;

  /// Execute the use case
  Future<void> execute(UserInfoEntity params) async {
    await _userRepository.saveUserInfo(params);
  }
}
