import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:welly/core/providers/core/services/authentication.service.provider.dart';
import 'package:welly/core/providers/core/services/navigation.service.provider.dart';
import 'package:welly/core/providers/foundation/services/authentication.service.dart';
import 'package:welly/core/providers/foundation/services/navigation.service.dart';
import 'package:welly/presentation/screens/authentication/authentication.state.dart';

part 'authentication.view_model.g.dart';

/// Authentication View Model
@riverpod
class Authentication extends _$Authentication {
  /// Authentication constructor
  Authentication();

  late NavigationService _navigationService;

  /// build
  @override
  Future<AuthenticationState> build() async {
    _navigationService = ref.watch(navigationServiceProvider);

    return AuthenticationState.initial();
  }

  /// login with apple
  Future<void> loginWithApple({void Function()? onFinished}) async {
    try {
      // The view model is now only responsible for calling the service
      // and handling the result. All the business logic is in the service.
      final AuthenticationService authService = await ref.watch(
        authenticationServiceProvider.future,
      );
      final User? user = await authService.loginWithApple();

      debugPrint('Successfully signed in with Firebase: ${user?.displayName}');

      if (user != null) {
        if (onFinished != null) {
          onFinished.call();
        } else {
          _navigationService.navigateToHome(replace: true);
        }
      }
    } on FirebaseAuthException catch (e) {
      // Handle Firebase-specific errors
      debugPrint('Firebase Auth Error: ${e.message}');
      // TODO(clement): Show a user-friendly error message
    } on Exception catch (e) {
      // Handle other errors (e.g., user cancels the dialog)
      debugPrint('Apple Sign-In Error: $e');
    }
  }

  /// login with google
  Future<void> loginWithGoogle({void Function()? onFinished}) async {
    try {
      // The view model is now only responsible for calling the service
      // and handling the result. All the business logic is in the service.
      final AuthenticationService authService = await ref.watch(
        authenticationServiceProvider.future,
      );

      final User? user = await authService.loginWithGoogle();

      if (user != null) {
        if (onFinished != null) {
          onFinished.call();
        } else {
          _navigationService.navigateToHome(replace: true);
        }
      }

      // TODO(clement): Handle the signed-in user
      // This is the place to trigger navigation or update the UI state
      // based on the successful login.
      debugPrint('Successfully signed in with Google: ${user?.displayName}');
    } on FirebaseAuthException catch (e) {
      // Handle Firebase-specific errors
      debugPrint('Firebase Auth Error: ${e.message}');
      // TODO(clement): Show a user-friendly error message
    } on Exception catch (e) {
      // Handle other errors (e.g., user cancels the dialog)
      debugPrint('Google Sign-In Error: $e');
    }
  }
}
