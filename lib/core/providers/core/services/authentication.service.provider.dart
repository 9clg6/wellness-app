import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:welly/core/providers/core/services/analytics.service.provider.dart';
import 'package:welly/core/providers/core/services/navigation.service.provider.dart';
import 'package:welly/core/providers/core/services/user.service.provider.dart';
import 'package:welly/core/providers/core/usecases/get_user.use_case.provider.dart';
import 'package:welly/core/providers/core/usecases/login.use_case.provider.dart';
import 'package:welly/core/providers/core/usecases/logout.use_case.provider.dart';
import 'package:welly/core/providers/core/usecases/save_auth.use_case.provider.dart';
import 'package:welly/core/providers/foundation/services/authentication.service.dart';

part 'authentication.service.provider.g.dart';

/// Provider for the [AuthenticationService].
@riverpod
Future<AuthenticationService> authenticationService(Ref ref) async {
  return AuthenticationService(
    FirebaseAuth.instance,
    ref.watch(analyticsServiceProvider),
    loginUseCase: await ref.watch(loginUseCaseProvider.future),
    saveAuthUseCase: await ref.watch(saveAuthUseCaseProvider.future),
    getUserUseCase: await ref.watch(getUserUseCaseProvider.future),
    logoutUseCase: await ref.watch(logoutUseCaseProvider.future),
    navigationService: ref.watch(navigationServiceProvider),
    userService: await ref.watch(userServiceProvider.future),
  );
}
