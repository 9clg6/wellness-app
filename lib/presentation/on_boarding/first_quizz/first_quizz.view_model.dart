import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:welly/core/providers/core/services/onboarding.service.provider.dart';
import 'package:welly/domain/entities/onboarding_answers.dart';
import 'package:welly/presentation/on_boarding/first_quizz/first_quizz.state.dart';
import 'package:welly/presentation/on_boarding/on_boarding.view_model.dart';

part 'first_quizz.view_model.g.dart';

/// First quizz view model
@riverpod
class FirstQuizzViewModel extends _$FirstQuizzViewModel {
  late final OnboardingService _onboardingService;

  @override
  FirstQuizzState build() {
    _onboardingService = ref.watch(onboardingServiceProvider.notifier);

    tempNameController.addListener(showBtnListener);
    tempAgeController.addListener(showBtnListener);

    return FirstQuizzState.initial();
  }

  /// Page controller
  final PageController pageController = PageController();

  /// Temp name controller
  final TextEditingController tempNameController = TextEditingController();

  /// Temp age controller
  final TextEditingController tempAgeController = TextEditingController();

  /// Form key
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  /// Next step
  void nextStep() {
    state = state.copyWith(currentIndex: state.currentIndex + 1);

    pageController.nextPage(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );

    state = state.copyWith(selectedResponseIndex: null);
  }

  /// Q1 - Frequency
  void selectFrequency(int index) {
    _selectWithDelay(index, () {
      _onboardingService.setFrequency(index);
    });
  }

  /// Q2 - Discovery source
  void selectDiscoverySource(int index) {
    _selectWithDelay(index, () {
      _onboardingService.setDiscoverySource(index);
    });
  }

  /// Q3 - Favorite theme
  void selectFavoriteTheme(int index) {
    _selectWithDelay(index, () {
      _onboardingService.setFavoriteTheme(index);
    });
  }

  /// Q4 - Practice duration
  void selectPracticeDuration(int index) {
    _selectWithDelay(index, () {
      _onboardingService.setPracticeDuration(index);
    });
  }

  /// Q5 - Serenity (1..5)
  void selectSerenityScore(int score) {
    _selectWithDelay(score - 1, () {
      _onboardingService.setSerenityScore(score);
    });
  }

  /// Q6 - Identity (name + age)
  void setTempName(String value) {
    state = state.copyWith(tempName: value);
  }

  /// Q6 - Identity (name + age)
  void setTempAge(String value) {
    state = state.copyWith(tempAge: value);
  }

  /// Finalize the identity and return the answers if valid
  OnboardingAnswers? finalizeIdentity() {
    final String? name = state.tempName?.trim();
    final int? age = int.tryParse((state.tempAge ?? '').trim());
    if (name == null || name.isEmpty || age == null || age <= 0) {
      return null;
    }
    _onboardingService.setIdentity(firstName: name, age: age);
    final OnboardingAnswers updated = _onboardingService.state;
    state = state.copyWith(answers: updated, isCompleted: true);
    ref.read(onBoardingViewModelProvider.notifier).answers = updated;
    return updated;
  }

  /// Complete the quizz
  bool completeQuizz() {
    final OnboardingAnswers? answers = finalizeIdentity();
    return answers != null;
  }

  /// Selection with feedback UI (icon) then advance after ~500ms
  void _selectWithDelay(int uiSelectedIndex, VoidCallback action) {
    state = state.copyWith(selectedResponseIndex: uiSelectedIndex);
    Future<void>.delayed(const Duration(milliseconds: 500), () {
      action();
      nextStep();
    });
  }

  /// Validate the age and surname
  void validateAgeAndSurname() {
    if (formKey.currentState?.validate() ?? false) {
      completeQuizz();
    }
  }

  /// Show button listener
  void showBtnListener() {
    if (tempNameController.text.isNotEmpty &&
        tempAgeController.text.isNotEmpty) {
      state = state.copyWith(showBtn: true);
    } else {
      state = state.copyWith(showBtn: false);
    }
  }
}
