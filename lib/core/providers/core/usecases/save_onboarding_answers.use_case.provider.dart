import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:starter_kit/core/providers/data/repositories/user.repository.provider.dart';
import 'package:starter_kit/domain/repositories/user.repository.dart';
import 'package:starter_kit/domain/usecases/save_onboarding_answers.use_case.dart';

part 'save_onboarding_answers.use_case.provider.g.dart';

/// Save onboarding answers use case provider
@riverpod
Future<SaveOnboardingAnswersUseCase> saveOnboardingAnswersUseCase(
  Ref ref,
) async {
  final UserRepository userRepository = await ref.watch(
    userRepositoryProvider.future,
  );
  return SaveOnboardingAnswersUseCase(userRepository);
}
