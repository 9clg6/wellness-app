import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:welly/domain/entities/onboarding_answers.dart';

part 'onboarding.service.provider.g.dart';

/// Service d'onboarding: source de vérité des réponses + API de mise à jour
@Riverpod(keepAlive: true)
class OnboardingService extends _$OnboardingService {
  @override
  OnboardingAnswers build() => OnboardingAnswers();

  /// Set the frequency
  void setFrequency(int index) {
    debugPrint('[OnboardingService] setFrequency: $index');
    state = state.copyWith(frequencyIndex: index);
  }

  /// Set the discovery source
  void setDiscoverySource(int index) {
    debugPrint('[OnboardingService] setDiscoverySource: $index');
    state = state.copyWith(discoverySourceIndex: index);
  }

  /// Set the favorite theme
  void setFavoriteTheme(int index) {
    debugPrint('[OnboardingService] setFavoriteTheme: $index');
    state = state.copyWith(favoriteThemeIndex: index);
  }

  /// Set the practice duration
  void setPracticeDuration(int index) {
    debugPrint('[OnboardingService] setPracticeDuration: $index');
    state = state.copyWith(practiceDurationIndex: index);
  }

  /// Set the serenity score
  void setSerenityScore(int score) {
    debugPrint('[OnboardingService] setSerenityScore: $score');
    state = state.copyWith(serenityScore: score);
  }

  /// Set the identity
  void setIdentity({required String firstName, required int age}) {
    debugPrint('[OnboardingService] setIdentity: $firstName, $age');
    state = state.copyWith(firstName: firstName, age: age);
  }

  /// Set the goal
  void setGoal(int index) {
    debugPrint('[OnboardingService] setGoal: $index');
    state = state.copyWith(goalIndex: index);
  }

  /// Reset the onboarding answers
  void reset() {
    debugPrint('[OnboardingService] reset');
    state = OnboardingAnswers();
  }
}
