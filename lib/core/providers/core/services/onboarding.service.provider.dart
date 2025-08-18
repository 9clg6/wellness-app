import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:starter_kit/domain/entities/onboarding_answers.dart';

part 'onboarding.service.provider.g.dart';

/// Service d'onboarding: source de vérité des réponses + API de mise à jour
@riverpod
class OnboardingService extends _$OnboardingService {
  @override
  OnboardingAnswers build() => const OnboardingAnswers();

  /// Set the frequency
  void setFrequency(int index) => state = state.copyWith(frequencyIndex: index);

  /// Set the discovery source
  void setDiscoverySource(int index) =>
      state = state.copyWith(discoverySourceIndex: index);

  /// Set the favorite theme
  void setFavoriteTheme(int index) =>
      state = state.copyWith(favoriteThemeIndex: index);

  /// Set the practice duration
  void setPracticeDuration(int index) =>
      state = state.copyWith(practiceDurationIndex: index);

  /// Set the serenity score
  void setSerenityScore(int score) =>
      state = state.copyWith(serenityScore: score);

  /// Set the identity
  void setIdentity({required String firstName, required int age}) =>
      state = state.copyWith(firstName: firstName, age: age);

  /// Set the goal
  void setGoal(int index) => state = state.copyWith(goalIndex: index);

  /// Reset the onboarding answers
  void reset() => state = const OnboardingAnswers();
}
