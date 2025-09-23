import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:rxdart/rxdart.dart';
import 'package:welly/core/providers/foundation/services/navigation.service.dart';
import 'package:welly/domain/entities/auth.entity.dart';
import 'package:welly/domain/entities/onboarding_answers.dart';
import 'package:welly/domain/entities/user.entity.dart';
import 'package:welly/domain/params/login.param.dart';
import 'package:welly/domain/usecases/get_local_user.use_case.dart';
import 'package:welly/domain/usecases/get_onboarding_answers.use_case.dart';
import 'package:welly/domain/usecases/get_user.use_case.dart';
import 'package:welly/domain/usecases/is_onboarding_completed.use_case.dart';
import 'package:welly/domain/usecases/login.use_case.dart';
import 'package:welly/domain/usecases/logout.use_case.dart';
import 'package:welly/domain/usecases/save_auth.use_case.dart';
import 'package:welly/domain/usecases/save_onboarding_answers.use_case.dart';
import 'package:welly/domain/usecases/save_user.use_case.dart';
import 'package:welly/domain/usecases/set_onboarding_completed.use_case.dart';
import 'package:welly/foundation/interfaces/results.usecases.dart';

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
    required GetOnboardingAnswersUseCase getOnboardingAnswersUseCase,
    required SetOnboardingCompletedUseCase setOnboardingCompletedUseCase,
    required IsOnboardingCompletedUseCase isOnboardingCompletedUseCase,
    required GetLocalUserUseCase getLocalUserUseCase,
    required SaveUserUseCase saveUserUseCase,
  }) : _navigationService = navigationService,
       _getUserUseCase = getUserUseCase,
       _loginUseCase = loginUseCase,
       _saveAuthUseCase = saveAuthUseCase,
       _logoutUseCase = logoutUseCase,
       _saveOnboardingAnswersUseCase = saveOnboardingAnswersUseCase,
       _getOnboardingAnswersUseCase = getOnboardingAnswersUseCase,
       _setOnboardingCompletedUseCase = setOnboardingCompletedUseCase,
       _isOnboardingCompletedUseCase = isOnboardingCompletedUseCase,
       _getLocalUserUseCase = getLocalUserUseCase,
       _saveUserUseCase = saveUserUseCase;

  late final NavigationService _navigationService;
  late final GetUserUseCase _getUserUseCase;
  late final GetLocalUserUseCase _getLocalUserUseCase;
  late final LoginUseCase _loginUseCase;
  late final SaveAuthUseCase _saveAuthUseCase;
  late final LogoutUseCase _logoutUseCase;
  late final SaveUserUseCase _saveUserUseCase;
  late final SaveOnboardingAnswersUseCase _saveOnboardingAnswersUseCase;
  late final GetOnboardingAnswersUseCase _getOnboardingAnswersUseCase;
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

  /// Streak days
  int get streakDays => currentUser?.streakDays ?? 0;

  /// Load user
  Future<void> loadLocalUser() async {
    debugPrint('[UserService] loadLocalUser');
    final ResultState<UserEntity?> localUser = await _getLocalUserUseCase
        .execute();

    if (localUser.status == StateStatus.success) {
      if (localUser.data == null) {
        await createDefaultUser();
      } else {
        _userSubject.add(localUser.data);
      }
    } else {
      debugPrint('loadLocalUser: error: ${localUser.exception}');
    }
  }

  /// Create default user for onboarding
  Future<void> createDefaultUser() async {
    debugPrint('[UserService] createDefaultUser');
    _userSubject.add(UserEntity());
  }

  /// Update user firstname during onboarding
  Future<void> updateUserFirstname(String firstName) async {
    debugPrint('[UserService] updateUserFirstname');
    final UserEntity? currentUser = _userSubject.value;
    if (currentUser != null) {
      final UserEntity updatedUser = currentUser.copyWith(firstname: firstName);
      _userSubject.add(updatedUser);

      // Save to local storage
      await _saveUserUseCase.execute(updatedUser);
    }
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
    debugPrint('[UserService] isOnboardingCompleted');
    return currentUser?.isOnboardingCompleted ??
        await _isOnboardingCompletedUseCase.invoke();
  }

  /// Mark onboarding as completed
  Future<void> setOnboardingCompleted() async {
    debugPrint('[UserService] setOnboardingCompleted');
    final UserEntity? currentUser = _userSubject.value;
    if (currentUser != null) {
      final UserEntity updatedUser = currentUser.copyWith(
        isOnboardingCompleted: true,
      );
      updateAndSaveUser(updatedUser);
    } else {
      await _setOnboardingCompletedUseCase.execute();
    }
  }

  /// Save onboarding answers
  Future<void> saveOnboardingAnswers(OnboardingAnswers answers) async {
    debugPrint('[UserService] saveOnboardingAnswers');
    await _saveOnboardingAnswersUseCase.execute(answers);
  }

  /// Get onboarding answers
  Future<OnboardingAnswers?> getOnboardingAnswers() async {
    debugPrint('[UserService] getOnboardingAnswers');
    final ResultState<OnboardingAnswers?> onboardingAnswers =
        await _getOnboardingAnswersUseCase.execute();

    return onboardingAnswers.data;
  }

  /// Increase streak days
  void increaseStreakDays() {
    final UserEntity? currentUser = _userSubject.value;
    if (currentUser != null) {
      final UserEntity updatedUser = currentUser.copyWith(
        streakDays: currentUser.streakDays + 1,
      );
      updateAndSaveUser(updatedUser);
    }
  }

  /// Update and save user
  void updateAndSaveUser(UserEntity user) {
    _userSubject.add(user);
    _saveUserUseCase.execute(user);
  }
}
