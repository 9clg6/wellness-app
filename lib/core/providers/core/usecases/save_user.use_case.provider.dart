import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:welly/core/providers/data/repositories/user.repository.provider.dart';
import 'package:welly/domain/repositories/user.repository.dart';
import 'package:welly/domain/usecases/save_user.use_case.dart';

part 'save_user.use_case.provider.g.dart';

/// Save user use case provider
@riverpod
Future<SaveUserUseCase> saveUserUseCase(Ref ref) async {
  final UserRepository userRepository = await ref.watch(
    userRepositoryProvider.future,
  );
  return SaveUserUseCase(userRepository: userRepository);
}
