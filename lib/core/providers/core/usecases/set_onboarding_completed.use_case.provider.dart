import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:starter_kit/core/providers/data/repositories/user.repository.provider.dart';
import 'package:starter_kit/domain/repositories/user.repository.dart';
import 'package:starter_kit/domain/usecases/set_onboarding_completed.use_case.dart';

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
