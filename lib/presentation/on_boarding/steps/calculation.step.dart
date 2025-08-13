import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:starter_kit/presentation/on_boarding/on_boarding.view_model.dart';

/// Étape d'animation de calcul/préparation
class CalculationStep extends ConsumerStatefulWidget {
  const CalculationStep({super.key});

  @override
  ConsumerState<CalculationStep> createState() => _CalculationStepState();
}

class _CalculationStepState extends ConsumerState<CalculationStep> {
  @override
  void initState() {
    super.initState();
    Future<void>.delayed(const Duration(seconds: 3)).then((_) {
      if (!mounted) return;
      ref.read(onBoardingViewModelProvider.notifier).nextStep();
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          CircularProgressIndicator(),
          Gap(16),
          Text('Préparation de ton plan...'),
        ],
      ),
    );
  }
}
