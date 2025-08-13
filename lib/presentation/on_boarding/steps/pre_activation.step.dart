import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:starter_kit/presentation/on_boarding/on_boarding.view_model.dart';
import 'package:starter_kit/presentation/widgets/continue_button_card.dart';

/// Étape de pré-activation émotionnelle
class PreActivationStep extends ConsumerWidget {
  const PreActivationStep({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final OnBoardingViewModel viewModel = ref.watch(
      onBoardingViewModelProvider.notifier,
    );
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Text(
          'Es-tu prêt à commencer ton premier moment positif aujourd’hui ?',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20, color: Colors.black),
        ),
        const Gap(24),
        ContinueButtonCard(
          onTap: viewModel.nextStep,
          title: 'Oui, je commence',
        ),
      ],
    );
  }
}
