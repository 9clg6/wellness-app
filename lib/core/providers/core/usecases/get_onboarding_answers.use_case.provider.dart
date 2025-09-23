import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:welly/core/providers/data/repositories/user.repository.provider.dart';
import 'package:welly/domain/repositories/user.repository.dart';
import 'package:welly/domain/usecases/get_onboarding_answers.use_case.dart';

part 'get_onboarding_answers.use_case.provider.g.dart';

/// Get onboarding answers use case provider
@riverpod
Future<GetOnboardingAnswersUseCase> getOnboardingAnswersUseCase(Ref ref) async {
  final UserRepository userRepository = await ref.watch(
    userRepositoryProvider.future,
  );
  return GetOnboardingAnswersUseCase(userRepository: userRepository);
}
