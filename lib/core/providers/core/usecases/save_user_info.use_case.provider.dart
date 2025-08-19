import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:starter_kit/core/providers/data/repositories/user.repository.provider.dart';
import 'package:starter_kit/domain/repositories/user.repository.dart';
import 'package:starter_kit/domain/usecases/save_user_info.use_case.dart';

part 'save_user_info.use_case.provider.g.dart';

/// Save user info use case provider
@riverpod
Future<SaveUserInfoUseCase> saveUserInfoUseCase(Ref ref) async {
  final UserRepository userRepository = await ref.watch(
    userRepositoryProvider.future,
  );
  return SaveUserInfoUseCase(userRepository);
}
