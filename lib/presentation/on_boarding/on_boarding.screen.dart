import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:starter_kit/presentation/on_boarding/first_quizz/first_quizz.screen.dart';
import 'package:starter_kit/presentation/on_boarding/on_boarding.view_model.dart';
import 'package:starter_kit/presentation/on_boarding/steps/calculation.step.dart';
import 'package:starter_kit/presentation/on_boarding/steps/education.step.dart';
import 'package:starter_kit/presentation/on_boarding/steps/goals.step.dart';
import 'package:starter_kit/presentation/on_boarding/steps/mini_diagnostic.step.dart';
import 'package:starter_kit/presentation/on_boarding/steps/paywall.step.dart';
import 'package:starter_kit/presentation/on_boarding/steps/post_paywall.step.dart';
import 'package:starter_kit/presentation/on_boarding/steps/pre_activation.step.dart';
import 'package:starter_kit/presentation/on_boarding/steps/solution.step.dart';
import 'package:starter_kit/presentation/on_boarding/steps/testimonials.step.dart';
import 'package:starter_kit/presentation/on_boarding/steps/welcome.step.dart';

/// On boarding screen
@RoutePage()
class OnBoardingScreen extends ConsumerStatefulWidget {
  /// Constructor
  const OnBoardingScreen({super.key});

  /// Build
  @override
  ConsumerState<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

/// On boarding state
class _OnBoardingScreenState extends ConsumerState<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    final OnBoardingViewModel viewModel = ref.watch(
      onBoardingViewModelProvider.notifier,
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: PageView(
          controller: viewModel.pageController,
          physics: const NeverScrollableScrollPhysics(),
          children: <Widget>[
            const WelcomeStep(),
            FirstPersonalEngagementQuiz(onEnd: viewModel.nextStep),
            const CalculationStep(),
            const MiniDiagnosticStep(),
            const EducationStep(),
            const SolutionStep(),
            const TestimonialsStep(),
            const GoalsStep(),
            const PreActivationStep(),
            const PaywallStep(),
            const PostPaywallStep(),
          ],
        ),
      ),
    );
  }
}
