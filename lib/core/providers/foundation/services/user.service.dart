import 'dart:async';

import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:rxdart/rxdart.dart';
import 'package:welly/domain/entities/onboarding_answers.dart';
import 'package:welly/domain/entities/user.entity.dart';
import 'package:welly/domain/usecases/get_local_user.use_case.dart';
import 'package:welly/domain/usecases/get_onboarding_answers.use_case.dart';
import 'package:welly/domain/usecases/is_onboarding_completed.use_case.dart';
import 'package:welly/domain/usecases/save_onboarding_answers.use_case.dart';
import 'package:welly/domain/usecases/save_user.use_case.dart';
import 'package:welly/domain/usecases/set_onboarding_completed.use_case.dart';
import 'package:welly/foundation/interfaces/results.usecases.dart';

/// User service
class UserService {
  /// Constructor
  UserService({
    required SaveOnboardingAnswersUseCase saveOnboardingAnswersUseCase,
    required GetOnboardingAnswersUseCase getOnboardingAnswersUseCase,
    required SetOnboardingCompletedUseCase setOnboardingCompletedUseCase,
    required IsOnboardingCompletedUseCase isOnboardingCompletedUseCase,
    required GetLocalUserUseCase getLocalUserUseCase,
    required SaveUserUseCase saveUserUseCase,
  }) : _saveOnboardingAnswersUseCase = saveOnboardingAnswersUseCase,
       _getOnboardingAnswersUseCase = getOnboardingAnswersUseCase,
       _setOnboardingCompletedUseCase = setOnboardingCompletedUseCase,
       _isOnboardingCompletedUseCase = isOnboardingCompletedUseCase,
       _getLocalUserUseCase = getLocalUserUseCase,
       _saveUserUseCase = saveUserUseCase;

  late final GetLocalUserUseCase _getLocalUserUseCase;
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
    try {
      final ResultState<UserEntity?> localUser = await _getLocalUserUseCase
          .execute();

      if (localUser.status == StateStatus.success) {
        if (localUser.data == null) {
          await createDefaultUser();
        } else {
          _userSubject.add(localUser.data);
        }
      } else {
        debugPrint('[UserService] loadLocalUser error: ${localUser.exception}');
        await createDefaultUser(); // Fallback to default user
      }
    } on Exception catch (e, s) {
      debugPrint('[UserService] loadLocalUser critical error: $e');
      unawaited(FirebaseCrashlytics.instance.recordError(e, s));
      await createDefaultUser(); // Fallback to default user
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
  void updateAndSaveUser(UserEntity? user) {
    _userSubject.add(user);
    if (user != null) {
      _saveUserUseCase.execute(user);
    }
  }
}
