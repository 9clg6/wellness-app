import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:starter_kit/presentation/on_boarding/on_boarding.view_model.dart';

/// Étape paywall personnalisé
class PaywallStep extends ConsumerWidget {
  const PaywallStep({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final OnBoardingViewModel viewModel = ref.watch(
      onBoardingViewModelProvider.notifier,
    );
    final String name = viewModel.answers?.firstName ?? 'toi';
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            '$name, commençons ensemble ton rituel personnalisé',
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 20, color: Colors.black),
          ),
          const Gap(24),
          ElevatedButton(
            onPressed: viewModel.nextStep,
            child: const Text('Essai gratuit 7j → Abonnement annuel'),
          ),
          const Gap(12),
          ElevatedButton(
            onPressed: viewModel.nextStep,
            child: const Text('Abonnement mensuel'),
          ),
          const Gap(12),
          TextButton(
            onPressed: viewModel.nextStep,
            child: const Text('Plus tard'),
          ),
          const Gap(12),
          const Text(
            'Annulable à tout moment en 2 clics',
            style: TextStyle(color: Colors.black54),
          ),
        ],
      ),
    );
  }
}
