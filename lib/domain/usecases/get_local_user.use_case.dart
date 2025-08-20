import 'package:starter_kit/domain/entities/user.entity.dart';
import 'package:starter_kit/domain/repositories/user.repository.dart';
import 'package:starter_kit/foundation/interfaces/future.usecases.dart';

/// Use case to get local user
class GetLocalUserUseCase extends FutureUseCase<UserEntity?> {
  /// Constructor
  GetLocalUserUseCase(this._userRepository);

  final UserRepository _userRepository;

  /// Execute the use case
  @override
  Future<UserEntity?> invoke() async {
    return _userRepository.getLocalUser();
  }
}
