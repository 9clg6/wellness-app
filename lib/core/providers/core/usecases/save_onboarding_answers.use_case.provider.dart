import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:welly/core/providers/data/repositories/user.repository.provider.dart';
import 'package:welly/domain/repositories/user.repository.dart';
import 'package:welly/domain/usecases/save_onboarding_answers.use_case.dart';

part 'save_onboarding_answers.use_case.provider.g.dart';

/// Save onboarding answers use case provider
@riverpod
Future<SaveOnboardingAnswersUseCase> saveOnboardingAnswersUseCase(
  Ref ref,
) async {
  final UserRepository userRepository = await ref.watch(
    userRepositoryProvider.future,
  );
  return SaveOnboardingAnswersUseCase(userRepository: userRepository);
}
