import 'dart:async';

import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';
import 'package:welly/core/providers/foundation/services/analytics.service.dart';
import 'package:welly/core/providers/foundation/services/navigation.service.dart';
import 'package:welly/core/providers/foundation/services/user.service.dart';
import 'package:welly/domain/entities/auth.entity.dart';
import 'package:welly/domain/entities/user.entity.dart';
import 'package:welly/domain/params/login.param.dart';
import 'package:welly/domain/usecases/get_user.use_case.dart';
import 'package:welly/domain/usecases/login.use_case.dart';
import 'package:welly/domain/usecases/logout.use_case.dart';
import 'package:welly/domain/usecases/save_auth.use_case.dart';
import 'package:welly/foundation/interfaces/results.usecases.dart';

/// Service responsible for handling authentication logic with Firebase.
class AuthenticationService {
  /// Constructor
  AuthenticationService(
    this._firebaseAuth,
    this._analyticsService, {
    required LoginUseCase loginUseCase,
    required SaveAuthUseCase saveAuthUseCase,
    required GetUserUseCase getUserUseCase,
    required LogoutUseCase logoutUseCase,
    required NavigationService navigationService,
    required UserService userService,
  }) : _loginUseCase = loginUseCase,
       _saveAuthUseCase = saveAuthUseCase,
       _getUserUseCase = getUserUseCase,
       _logoutUseCase = logoutUseCase,
       _navigationService = navigationService,
       _userService = userService;

  final FirebaseAuth _firebaseAuth;
  final AnalyticsService _analyticsService;
  late final LoginUseCase _loginUseCase;
  late final SaveAuthUseCase _saveAuthUseCase;
  late final GetUserUseCase _getUserUseCase;
  late final LogoutUseCase _logoutUseCase;
  late final NavigationService _navigationService;
  late final UserService _userService;

  /// Stream of authentication state changes from Firebase.
  /// Emits the current [User] if logged in, or `null` otherwise.
  Stream<User?> get authStateChanges => _firebaseAuth.authStateChanges();

  /// Handles the entire Sign in with Apple flow and
  /// authenticates with Firebase.
  /// Returns the [UserCredential] on success.
  /// Throws exceptions on failure.
  Future<User?> loginWithApple() async {
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
      unawaited(_analyticsService.setUserId(user.uid));
      unawaited(FirebaseCrashlytics.instance.setUserIdentifier(user.uid));
    }

    return user;
  }

  /// Handles the entire Sign in with Google flow and
  /// authenticates with Firebase.
  /// Returns the [User] on success.
  /// Throws exceptions on failure.
  Future<User?> loginWithGoogle() async {
    try {
      // Initialize GoogleSignIn with proper configuration
      await GoogleSignIn.instance.initialize();

      // Trigger the authentication flow
      final GoogleSignInAccount googleUser = await GoogleSignIn.instance
          .authenticate(scopeHint: <String>['email', 'profile']);

      // Obtain the auth details from the request
      final GoogleSignInAuthentication googleAuth = googleUser.authentication;

      // Get authorization tokens for server authentication
      final GoogleSignInServerAuthorization? serverAuth = await googleUser
          .authorizationClient
          .authorizeServer(<String>['email', 'profile']);

      // Create a new credential
      final OAuthCredential credential = GoogleAuthProvider.credential(
        accessToken: serverAuth?.serverAuthCode,
        idToken: googleAuth.idToken,
      );

      // Sign in to Firebase with the Google credential
      final UserCredential userCredential = await _firebaseAuth
          .signInWithCredential(credential);

      final User? user = userCredential.user;
      if (user != null) {
        // Associate user ID with Analytics and Crashlytics
        //for better reporting.
        unawaited(_analyticsService.setUserId(user.uid));
        unawaited(FirebaseCrashlytics.instance.setUserIdentifier(user.uid));
      }

      return user;
    } catch (e) {
      debugPrint('Google Sign-In Error: $e');
      rethrow;
    }
  }

  /// Login
  Future<void> login({
    required String username,
    required String password,
    required Null Function() onRequest,
    required Null Function() onFinish,
  }) async {
    final LoginParam params = LoginParam(
      username: username,
      password: password,
    );

    onRequest();
    final ResultState<AuthEntity> result = await _loginUseCase.execute(params);

    await result.when(
      success: (AuthEntity data) async {
        onFinish();
        await _saveAuthUseCase.execute(data);

        final ResultState<UserEntity> user = await _getUserUseCase.execute();
        _userService.updateAndSaveUser(user.data);
        _navigationService.navigateToHome(replace: true);
      },
      failure: (Exception exception) async {
        debugPrint('failure: $exception');
        onFinish();
        if (exception is DioException) {
          switch (exception.response?.statusCode) {
            case 400:
            // await _dialogService.showLoginErrorDialog(
            //   title: LocaleKeys.errorOccured.tr(),
            //   message: LocaleKeys.loginOrPasswordIncorrect.tr(),
            // );
          }
        } else if (exception is TimeoutException) {
          // await _dialogService.showLoginErrorDialog(
          //   title: LocaleKeys.errorOccured.tr(),
          //   message: LocaleKeys.operationTimeout.tr(),
          // );
        }
      },
    );
  }

  /// Logout
  /// Complete logout process: clear auth token, email, and user data
  Future<void> logout() async {
    try {
      await _logoutUseCase.execute();
      _userService.updateAndSaveUser(null);

      _navigationService.navigateToSignInPage();
    } on Exception catch (exception) {
      debugPrint('logout: error during logout: $exception');
      _userService.updateAndSaveUser(null);
      _navigationService.navigateToSignInPage();
    }
  }
}
