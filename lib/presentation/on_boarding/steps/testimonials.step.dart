import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:starter_kit/presentation/on_boarding/on_boarding.view_model.dart';
import 'package:starter_kit/presentation/widgets/continue_button_card.dart';

/// Étape témoignages
class TestimonialsStep extends ConsumerWidget {
  const TestimonialsStep({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final OnBoardingViewModel viewModel = ref.watch(
      onBoardingViewModelProvider.notifier,
    );
    final List<String> testimonials = <String>[
      '“En un mois, j’ai retrouvé une énergie positive que je pensais perdue.”',
      '“3 minutes par jour, et je dors mieux.”',
    ];
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ...testimonials.map(
            (String t) => Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: Text(
                t,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 18, color: Colors.black),
              ),
            ),
          ),
          const Gap(24),
          ContinueButtonCard(onTap: viewModel.nextStep, title: 'Continuer'),
        ],
      ),
    );
  }
}
