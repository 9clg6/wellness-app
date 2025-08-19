import 'package:starter_kit/domain/entities/user_info.entity.dart';
import 'package:starter_kit/domain/repositories/user.repository.dart';

/// Use case to get user info
class GetUserInfoUseCase {
  /// Constructor
  const GetUserInfoUseCase(this._userRepository);

  final UserRepository _userRepository;

  /// Execute the use case
  Future<UserInfoEntity?> execute() async {
    return _userRepository.getUserInfo();
  }
}
