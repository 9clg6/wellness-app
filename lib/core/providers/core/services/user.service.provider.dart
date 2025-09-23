import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:welly/core/providers/core/services/navigation.service.provider.dart';
import 'package:welly/core/providers/core/usecases/get_local_user.use_case.provider.dart';
import 'package:welly/core/providers/core/usecases/get_onboarding_answers.use_case.provider.dart';
import 'package:welly/core/providers/core/usecases/get_user.use_case.provider.dart';
import 'package:welly/core/providers/core/usecases/is_onboarding_completed.use_case.provider.dart';
import 'package:welly/core/providers/core/usecases/login.use_case.provider.dart';
import 'package:welly/core/providers/core/usecases/logout.use_case.provider.dart';
import 'package:welly/core/providers/core/usecases/save_auth.use_case.provider.dart';
import 'package:welly/core/providers/core/usecases/save_onboarding_answers.use_case.provider.dart';
import 'package:welly/core/providers/core/usecases/save_user.use_case.provider.dart';
import 'package:welly/core/providers/core/usecases/set_onboarding_completed.use_case.provider.dart';
import 'package:welly/core/providers/foundation/services/user.service.dart';

part 'user.service.provider.g.dart';

/// User service provider
@Riverpod(keepAlive: true)
Future<UserService> userService(Ref ref) async {
  return UserService(
    navigationService: ref.watch(navigationServiceProvider),
    getUserUseCase: await ref.watch(getUserUseCaseProvider.future),
    loginUseCase: await ref.watch(loginUseCaseProvider.future),
    saveAuthUseCase: await ref.watch(saveAuthUseCaseProvider.future),
    logoutUseCase: await ref.watch(logoutUseCaseProvider.future),
    saveOnboardingAnswersUseCase: await ref.watch(
      saveOnboardingAnswersUseCaseProvider.future,
    ),
    getOnboardingAnswersUseCase: await ref.watch(
      getOnboardingAnswersUseCaseProvider.future,
    ),
    setOnboardingCompletedUseCase: await ref.watch(
      setOnboardingCompletedUseCaseProvider.future,
    ),
    isOnboardingCompletedUseCase: await ref.watch(
      isOnboardingCompletedUseCaseProvider.future,
    ),
    getLocalUserUseCase: await ref.watch(getLocalUserUseCaseProvider.future),
    saveUserUseCase: await ref.watch(saveUserUseCaseProvider.future),
  );
}
