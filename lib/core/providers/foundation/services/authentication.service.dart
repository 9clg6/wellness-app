import 'dart:async';

import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

/// Service responsible for handling authentication logic with Firebase.
class AuthenticationService {
  /// Constructor
  AuthenticationService(this._firebaseAuth);

  final FirebaseAuth _firebaseAuth;

  /// Handles the entire Sign in with Apple flow and 
  /// authenticates with Firebase.
  /// Returns the [UserCredential] on success.
  /// Throws exceptions on failure.
  Future<UserCredential> loginWithApple() async {
    final AuthorizationCredentialAppleID appleCredential =
        await SignInWithApple.getAppleIDCredential(
          scopes: <AppleIDAuthorizationScopes>[
            AppleIDAuthorizationScopes.email,
            AppleIDAuthorizationScopes.fullName,
          ],
        );

    final OAuthCredential oauthCredential = OAuthProvider('apple.com')
        .credential(
          idToken: appleCredential.identityToken,
          accessToken: appleCredential.authorizationCode,
        );

    final UserCredential userCredential = await _firebaseAuth
        .signInWithCredential(oauthCredential);

    final User? user = userCredential.user;
    if (user != null) {
      // Associate user ID with Analytics and Crashlytics for better reporting.
      unawaited(FirebaseAnalytics.instance.setUserId(id: user.uid));
      unawaited(FirebaseCrashlytics.instance.setUserIdentifier(user.uid));

      // Get the FCM token for this device and log it.
      // The token should be sent to a backend to send targeted notifications.
      final String? fcmToken = await FirebaseMessaging.instance.getToken();
      debugPrint('FCM Token for user ${user.uid}: $fcmToken');
    }

    return userCredential;
  }
}
