import 'package:welly/domain/entities/user.entity.dart';
import 'package:welly/domain/repositories/user.repository.dart';
import 'package:welly/foundation/interfaces/future.usecases.dart';

/// Use case to get local user
class GetLocalUserUseCase extends FutureUseCase<UserEntity?> {
  /// Constructor
  GetLocalUserUseCase({required UserRepository userRepository})
    : _userRepository = userRepository;

  final UserRepository _userRepository;

  /// Execute the use case
  @override
  Future<UserEntity?> invoke() async {
    return _userRepository.getLocalUser();
  }
}
