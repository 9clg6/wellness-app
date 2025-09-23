// ignore_for_file: one_member_abstracts fck linter

import 'package:welly/domain/entities/onboarding_answers.dart';
import 'package:welly/domain/entities/user.entity.dart';

/// User Repository
abstract class UserRepository {
  /// get user
  Future<UserEntity> getUser();

  /// Set on boarding as seen
  Future<void> setOnBoardingAsSeen();

  /// Check if onboarding is completed
  Future<bool> isOnboardingCompleted();

  /// Mark onboarding as completed
  Future<void> setOnboardingCompleted();

  /// Reset onboarding status
  Future<void> resetOnboarding();

  /// Save onboarding answers
  Future<void> saveOnboardingAnswers(OnboardingAnswers answers);

  /// Get onboarding answers
  Future<OnboardingAnswers?> getOnboardingAnswers();

  /// Save user after onboarding
  Future<void> saveUser(UserEntity user);

  /// Get user from local storage
  Future<UserEntity?> getLocalUser();
}
