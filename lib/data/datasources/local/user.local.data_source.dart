import 'package:starter_kit/data/model/local/onboarding_answers.local.model.dart';
import 'package:starter_kit/data/model/local/user.local.model.dart';

/// User local data source
abstract class UserLocalDataSource {
  /// Set on boarding as seen
  Future<void> setOnBoardingAsSeen();

  /// Check if onboarding is completed
  Future<bool> isOnboardingCompleted();

  /// Mark onboarding as completed
  Future<void> setOnboardingCompleted();

  /// Reset onboarding status
  Future<void> resetOnboarding();

  /// Save onboarding answers
  Future<void> saveOnboardingAnswers(OnboardingAnswersLocalModel answers);

  /// Get onboarding answers
  Future<OnboardingAnswersLocalModel?> getOnboardingAnswers();

  /// Save user after onboarding
  Future<void> saveUser(UserLocalModel user);

  /// Get user
  Future<UserLocalModel?> getUser();
}
