import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:starter_kit/presentation/on_boarding/first_quizz/first_quizz.state.dart';
import 'package:starter_kit/presentation/on_boarding/models/onboarding_answers.dart';
import 'package:starter_kit/presentation/on_boarding/on_boarding.view_model.dart';

part 'first_quizz.view_model.g.dart';

/// On boarding view model
@riverpod
class FirstQuizzViewModel extends _$FirstQuizzViewModel {
  @override
  FirstQuizzState build() => FirstQuizzState.initial();

  /// Page controller
  final PageController pageController = PageController();

  /// Next step
  void nextStep() {
    state = state.copyWith(currentIndex: state.currentIndex + 1);
    pageController.nextPage(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  /// Q1 - Fréquence
  void selectFrequency(int index) {
    state = state.copyWith(
      answers: state.answers.copyWith(frequencyIndex: index),
    );
    nextStep();
  }

  /// Q2 - Découverte
  void selectDiscoverySource(int index) {
    state = state.copyWith(
      answers: state.answers.copyWith(discoverySourceIndex: index),
    );
    nextStep();
  }

  /// Q3 - Thème préféré
  void selectFavoriteTheme(int index) {
    state = state.copyWith(
      answers: state.answers.copyWith(favoriteThemeIndex: index),
    );
    nextStep();
  }

  /// Q4 - Ancienneté de la pratique
  void selectPracticeDuration(int index) {
    state = state.copyWith(
      answers: state.answers.copyWith(practiceDurationIndex: index),
    );
    nextStep();
  }

  /// Q5 - Sérénité (1..5)
  void selectSerenityScore(int score) {
    state = state.copyWith(
      answers: state.answers.copyWith(serenityScore: score),
    );
    nextStep();
  }

  /// Q6 - Identité (prénom + âge)
  void setTempName(String value) {
    state = state.copyWith(tempName: value);
  }

  /// Q6 - Identité (prénom + âge)
  void setTempAge(String value) {
    state = state.copyWith(tempAge: value);
  }

  /// Finalise l'identité et renvoie les réponses si valides
  OnboardingAnswers? finalizeIdentity() {
    final String? name = state.tempName?.trim();
    final int? age = int.tryParse((state.tempAge ?? '').trim());
    if (name == null || name.isEmpty || age == null || age <= 0) {
      return null;
    }
    final OnboardingAnswers updated = state.answers.copyWith(
      firstName: name,
      age: age,
    );
    state = state.copyWith(answers: updated, isCompleted: true);
    // Remonter les réponses au ViewModel parent
    // L'UI se contente d'écouter isCompleted et d'appeler onEnd
    // ignore: invalid_use_of_internal_member
    ref.read(onBoardingViewModelProvider.notifier).setAnswers(updated);
    return updated;
  }

  /// Appelé par l'UI, déclenche la finalisation et retourne succès/échec
  bool completeQuizz() {
    final OnboardingAnswers? answers = finalizeIdentity();
    return answers != null;
  }
}
