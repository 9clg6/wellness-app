import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:starter_kit/domain/entities/onboarding_answers.dart';
import 'package:starter_kit/presentation/on_boarding/on_boarding.state.dart';

part 'on_boarding.view_model.g.dart';

/// On boarding view model
@riverpod
class OnBoardingViewModel extends _$OnBoardingViewModel {
  @override
  OnBoardingState build() => OnBoardingState.initial();

  /// Page controller
  final PageController pageController = PageController();

  OnboardingAnswers? _answers;

  /// Réponses collectées
  OnboardingAnswers get answers => _answers ?? const OnboardingAnswers();

  /// Setter des réponses
  set answers(OnboardingAnswers answers) {
    _answers = answers;
  }

  /// Next step
  void nextStep() {
    state = state.copyWith(currentStep: state.currentStep + 1);
    pageController.nextPage(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  /// Select option
  void selectOption(int option) {
    state = state.copyWith(selectedOption: option);
  }
}
