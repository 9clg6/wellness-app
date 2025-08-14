import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:starter_kit/core/localization/generated/locale_keys.g.dart';
import 'package:starter_kit/domain/entities/onboarding_answers.dart';
import 'package:starter_kit/presentation/on_boarding/on_boarding.view_model.dart';

/// Étape objectifs personnalisés
class GoalsStep extends ConsumerWidget {
  /// Constructor
  const GoalsStep({super.key});

  static final List<String> _goals = <String>[
    LocaleKeys.onboarding_goals_stress.tr(),
    LocaleKeys.onboarding_goals_sleep.tr(),
    LocaleKeys.onboarding_goals_confidence.tr(),
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
          Text(
            LocaleKeys.onboarding_goals_title.tr(),
            style: const TextStyle(fontSize: 20, color: Colors.black),
          ),
          const SizedBox(height: 24),
          ..._goals.asMap().entries.map(
            (MapEntry<int, String> e) => Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: ElevatedButton(
                onPressed: () {
                  final OnboardingAnswers answers = viewModel.answers.copyWith(
                    goalIndex: e.key,
                  );
                  viewModel
                    ..answers = answers
                    ..nextStep();
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
