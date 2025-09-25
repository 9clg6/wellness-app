import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:welly/core/providers/core/services/authentication.service.provider.dart';
import 'package:welly/core/providers/core/services/user.service.provider.dart';
import 'package:welly/core/providers/foundation/services/authentication.service.dart';
import 'package:welly/core/providers/foundation/services/user.service.dart';
import 'package:welly/presentation/screens/authentication/authentication.state.dart';

part 'authentication.view_model.g.dart';

/// Authentication View Model
@riverpod
class Authentication extends _$Authentication {
  /// Authentication constructor
  Authentication();

  late UserService _userService;
  late AuthenticationService _authService;

  /// email controller
  final TextEditingController usernameController = TextEditingController();

  /// password controller
  final TextEditingController passwordController = TextEditingController();

  /// form key
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  /// build
  @override
  Future<AuthenticationState> build() async {
    _userService = await ref.watch(userServiceProvider.future);
    _authService = ref.watch(authenticationServiceProvider);

    return AuthenticationState.initial();
  }

  /// login
  Future<void> login() async {
    debugPrint('login');
    if (formKey.currentState?.validate() == false) return;
    state = AsyncValue<AuthenticationState>.data(
      state.value!.copyWith(loading: true),
    );

    await _userService.login(
      onRequest: () {
        state = AsyncValue<AuthenticationState>.data(
          state.value!.copyWith(loading: true),
        );
      },
      onFinish: () {
        state = AsyncValue<AuthenticationState>.data(
          state.value!.copyWith(loading: false),
        );
      },
      username: usernameController.text,
      password: passwordController.text,
    );
  }

  /// login with apple
  Future<void> loginWithApple() async {
    try {
      // The view model is now only responsible for calling the service
      // and handling the result. All the business logic is in the service.
      final UserCredential userCredential = await _authService.loginWithApple();

      // TODO(clement): Handle the signed-in user
      // This is the place to trigger navigation or update the UI state
      // based on the successful login.
      debugPrint(
        'Successfully signed in with Firebase: ${userCredential.user?.displayName}',
      );
    } on FirebaseAuthException catch (e) {
      // Handle Firebase-specific errors
      debugPrint('Firebase Auth Error: ${e.message}');
      // TODO(clement): Show a user-friendly error message
    } on Exception catch (e) {
      // Handle other errors (e.g., user cancels the dialog)
      debugPrint('Apple Sign-In Error: $e');
    }
  }
}
