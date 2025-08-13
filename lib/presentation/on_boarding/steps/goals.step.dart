import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:starter_kit/presentation/on_boarding/models/onboarding_answers.dart';
import 'package:starter_kit/presentation/on_boarding/on_boarding.view_model.dart';

/// Étape objectifs personnalisés
class GoalsStep extends ConsumerWidget {
  const GoalsStep({super.key});

  static const List<String> _goals = <String>[
    'Réduire le stress',
    'Améliorer le sommeil',
    'Booster la confiance',
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final OnBoardingViewModel viewModel = ref.watch(
      onBoardingViewModelProvider.notifier,
    );
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            'Quel est ton objectif avec ce rituel ?',
            style: TextStyle(fontSize: 20, color: Colors.black),
          ),
          const SizedBox(height: 24),
          ..._goals.asMap().entries.map(
            (MapEntry<int, String> e) => Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: ElevatedButton(
                onPressed: () {
                  final OnboardingAnswers answers =
                      (viewModel.answers ?? const OnboardingAnswers()).copyWith(
                        goalIndex: e.key,
                      );
                  viewModel.setAnswers(answers);
                  viewModel.nextStep();
                },
                child: Text(e.value),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
