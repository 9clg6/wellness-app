import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:welly/core/providers/core/services/authentication.service.provider.dart';
import 'package:welly/core/providers/core/services/navigation.service.provider.dart';
import 'package:welly/core/providers/core/services/tracking.service.provider.dart';
import 'package:welly/core/providers/foundation/services/authentication.service.dart';
import 'package:welly/core/providers/foundation/services/navigation.service.dart';
import 'package:welly/core/providers/foundation/services/tracking.service.dart';
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
      final AuthenticationService authService = await ref.watch(
        authenticationServiceProvider.future,
      );
      final TrackingService trackingService = ref.watch(
        trackingServiceProvider,
      );

      final User? user = await authService.loginWithApple();

      debugPrint('Successfully signed in with Firebase: ${user?.displayName}');

      if (user != null) {
        await trackingService.trackLoginAppleSuccess(userId: user.uid);

        if (onFinished != null) {
          onFinished.call();
        } else {
          _navigationService.navigateToHome(replace: true);
        }
      }
    } on FirebaseAuthException catch (e, s) {
      debugPrint('Firebase Auth Error: ${e.message}');
      unawaited(FirebaseCrashlytics.instance.recordError(e, s));

    } on Exception catch (e, s) {
      debugPrint('Apple Sign-In Error: $e');
      unawaited(FirebaseCrashlytics.instance.recordError(e, s));
    }
  }

  /// login with google
  Future<void> loginWithGoogle({void Function()? onFinished}) async {
    try {
      final AuthenticationService authService = await ref.watch(
        authenticationServiceProvider.future,
      );
      final TrackingService trackingService = ref.watch(
        trackingServiceProvider,
      );

      final User? user = await authService.loginWithGoogle();

      if (user != null) {
        await trackingService.trackLoginGoogleSuccess(userId: user.uid);

        if (onFinished != null) {
          onFinished.call();
        } else {
          _navigationService.navigateToHome(replace: true);
        }
      }

      // This is the place to trigger navigation or update the UI state
      // based on the successful login.
      debugPrint('Successfully signed in with Google: ${user?.displayName}');
    } on FirebaseAuthException catch (e, s) {
      // Handle Firebase-specific errors
      debugPrint('Firebase Auth Error: ${e.message}');
      unawaited(FirebaseCrashlytics.instance.recordError(e, s));

    } on Exception catch (e, s) {
      debugPrint('Google Sign-In Error: $e');
      unawaited(FirebaseCrashlytics.instance.recordError(e, s));
    }
  }
}
