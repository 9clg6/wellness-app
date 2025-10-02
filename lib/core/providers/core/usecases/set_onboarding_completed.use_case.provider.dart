import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:welly/core/providers/data/repositories/user.repository.provider.dart';
import 'package:welly/domain/repositories/user.repository.dart';
import 'package:welly/domain/usecases/set_onboarding_completed.use_case.dart';

part 'set_onboarding_completed.use_case.provider.g.dart';

/// Set onboarding completed use case provider
@riverpod
Future<SetOnboardingCompletedUseCase> setOnboardingCompletedUseCase(
  Ref ref,
) async {
  final UserRepository userRepository = await ref.watch(
    userRepositoryProvider.future,
  );
  return SetOnboardingCompletedUseCase(userRepository: userRepository);
}
