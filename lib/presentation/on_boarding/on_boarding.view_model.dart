import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:starter_kit/core/providers/core/services/navigation.service.provider.dart';
import 'package:starter_kit/core/providers/core/services/user.service.provider.dart';
import 'package:starter_kit/core/providers/foundation/services/navigation.service.dart';
import 'package:starter_kit/core/providers/foundation/services/user.service.dart';
import 'package:starter_kit/domain/entities/onboarding_answers.dart';
import 'package:starter_kit/domain/entities/user_info.entity.dart';
import 'package:starter_kit/presentation/on_boarding/on_boarding.state.dart';

part 'on_boarding.view_model.g.dart';

/// On boarding view model
@riverpod
class OnBoardingViewModel extends _$OnBoardingViewModel {
  @override
  OnBoardingState build() {
    _navigationService = ref.read(navigationServiceProvider);
    return OnBoardingState.initial();
  }

  late final NavigationService _navigationService;

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

  /// Complete onboarding
  Future<void> completeOnboarding() async {
    final UserService userService = await ref.read(userServiceProvider.future);

    // Save onboarding answers
    await userService.saveOnboardingAnswers(answers);

    // Mark onboarding as completed
    await userService.setOnboardingCompleted();

    // Save user info
    final UserInfoEntity userInfo = UserInfoEntity(
      firstName: answers.firstName,
      age: answers.age,
      goalIndex: answers.goalIndex,
      completedAt: DateTime.now(),
      onboardingAnswers: <String, dynamic>{
        'frequencyIndex': answers.frequencyIndex,
        'discoverySourceIndex': answers.discoverySourceIndex,
        'favoriteThemeIndex': answers.favoriteThemeIndex,
        'practiceDurationIndex': answers.practiceDurationIndex,
        'serenityScore': answers.serenityScore,
      },
    );
    await userService.saveUserInfo(userInfo);

    // Navigate to home
    _navigationService.navigateToRealHome(replace: true);
  }

  /// Select option
  void selectOption(int option) {
    state = state.copyWith(selectedOption: option);
  }
}
