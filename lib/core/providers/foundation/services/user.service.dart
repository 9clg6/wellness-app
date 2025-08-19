import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:rxdart/rxdart.dart';
import 'package:starter_kit/core/providers/foundation/services/navigation.service.dart';
import 'package:starter_kit/domain/entities/auth.entity.dart';
import 'package:starter_kit/domain/entities/onboarding_answers.dart';
import 'package:starter_kit/domain/entities/user.entity.dart';
import 'package:starter_kit/domain/entities/user_info.entity.dart';
import 'package:starter_kit/domain/params/login.param.dart';
import 'package:starter_kit/domain/usecases/get_onboarding_answers.use_case.dart';
import 'package:starter_kit/domain/usecases/get_user.use_case.dart';
import 'package:starter_kit/domain/usecases/get_user_info.use_case.dart';
import 'package:starter_kit/domain/usecases/is_onboarding_completed.use_case.dart';
import 'package:starter_kit/domain/usecases/login.use_case.dart';
import 'package:starter_kit/domain/usecases/logout.use_case.dart';
import 'package:starter_kit/domain/usecases/save_auth.use_case.dart';
import 'package:starter_kit/domain/usecases/save_onboarding_answers.use_case.dart';
import 'package:starter_kit/domain/usecases/save_user_info.use_case.dart';
import 'package:starter_kit/domain/usecases/set_onboarding_completed.use_case.dart';
import 'package:starter_kit/foundation/interfaces/results.usecases.dart';

/// User service
class UserService {
  /// Constructor
  UserService({
    required NavigationService navigationService,
    required GetUserUseCase getUserUseCase,
    required LoginUseCase loginUseCase,
    required SaveAuthUseCase saveAuthUseCase,
    required LogoutUseCase logoutUseCase,
    required SaveOnboardingAnswersUseCase saveOnboardingAnswersUseCase,
    required SaveUserInfoUseCase saveUserInfoUseCase,
    required GetOnboardingAnswersUseCase getOnboardingAnswersUseCase,
    required GetUserInfoUseCase getUserInfoUseCase,
    required SetOnboardingCompletedUseCase setOnboardingCompletedUseCase,
    required IsOnboardingCompletedUseCase isOnboardingCompletedUseCase,
  }) : _navigationService = navigationService,
       _getUserUseCase = getUserUseCase,
       _loginUseCase = loginUseCase,
       _saveAuthUseCase = saveAuthUseCase,
       _logoutUseCase = logoutUseCase,
       _saveOnboardingAnswersUseCase = saveOnboardingAnswersUseCase,
       _saveUserInfoUseCase = saveUserInfoUseCase,
       _getOnboardingAnswersUseCase = getOnboardingAnswersUseCase,
       _getUserInfoUseCase = getUserInfoUseCase,
       _setOnboardingCompletedUseCase = setOnboardingCompletedUseCase,
       _isOnboardingCompletedUseCase = isOnboardingCompletedUseCase;

  late final NavigationService _navigationService;
  late final GetUserUseCase _getUserUseCase;
  late final LoginUseCase _loginUseCase;
  late final SaveAuthUseCase _saveAuthUseCase;
  late final LogoutUseCase _logoutUseCase;
  late final SaveOnboardingAnswersUseCase _saveOnboardingAnswersUseCase;
  late final SaveUserInfoUseCase _saveUserInfoUseCase;
  late final GetOnboardingAnswersUseCase _getOnboardingAnswersUseCase;
  late final GetUserInfoUseCase _getUserInfoUseCase;
  late final SetOnboardingCompletedUseCase _setOnboardingCompletedUseCase;
  late final IsOnboardingCompletedUseCase _isOnboardingCompletedUseCase;

  /// User subject
  final BehaviorSubject<UserEntity?> _userSubject =
      BehaviorSubject<UserEntity?>();

  /// User stream
  Stream<UserEntity?> get userStream => _userSubject.stream;

  /// Current user
  UserEntity? get currentUser => _userSubject.value;

  /// Is authenticated
  bool get isAuthenticated => currentUser != null;

  /// Load user
  Future<void> loadUser() async {
    final ResultState<UserEntity> user = await _getUserUseCase.execute();
    _userSubject.add(user.data);
  }

  /// Dispose
  void dispose() {
    _userSubject.close();
  }

  /// Get saved email
  Future<String?> getSavedEmail() async {
    // This method still needs UserPreferencesStorage for email management
    // We'll keep it for now but it should be refactored to use a use case
    throw UnimplementedError(
      'Email management should use a dedicated use case',
    );
  }

  /// Clear saved email
  Future<void> clearSavedEmail() async {
    // This method still needs UserPreferencesStorage for email management
    // We'll keep it for now but it should be refactored to use a use case
    throw UnimplementedError(
      'Email management should use a dedicated use case',
    );
  }

  /// Check if email is saved
  Future<bool> hasSavedEmail() async {
    // This method still needs UserPreferencesStorage for email management
    // We'll keep it for now but it should be refactored to use a use case
    throw UnimplementedError(
      'Email management should use a dedicated use case',
    );
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

        // Email saving logic should be moved to a use case
        // For now, we'll skip it to avoid UserPreferencesStorage dependency

        final ResultState<UserEntity> user = await _getUserUseCase.execute();
        _userSubject.add(user.data);
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

      // Email clearing logic should be moved to a use case
      // For now, we'll skip it to avoid UserPreferencesStorage dependency

      _userSubject.add(null);

      _navigationService.navigateToSignInPage();
    } on Exception catch (exception) {
      debugPrint('logout: error during logout: $exception');
      _userSubject.add(null);
      _navigationService.navigateToSignInPage();
    }
  }

  /// Check if onboarding is completed
  Future<bool> isOnboardingCompleted() async {
    return _isOnboardingCompletedUseCase.execute();
  }

  /// Mark onboarding as completed
  Future<void> setOnboardingCompleted() async {
    await _setOnboardingCompletedUseCase.execute();
  }

  /// Save onboarding answers
  Future<void> saveOnboardingAnswers(OnboardingAnswers answers) async {
    await _saveOnboardingAnswersUseCase.execute(answers);
  }

  /// Get onboarding answers
  Future<OnboardingAnswers?> getOnboardingAnswers() async {
    return _getOnboardingAnswersUseCase.execute();
  }

  /// Save user info after onboarding
  Future<void> saveUserInfo(UserInfoEntity userInfo) async {
    await _saveUserInfoUseCase.execute(userInfo);
  }

  /// Get user info
  Future<UserInfoEntity?> getUserInfo() async {
    return _getUserInfoUseCase.execute();
  }
}
