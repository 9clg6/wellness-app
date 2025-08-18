import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:starter_kit/core/localization/generated/locale_keys.g.dart';
import 'package:starter_kit/presentation/on_boarding/on_boarding.view_model.dart';

/// Étape d'animation de calcul/préparation
class CalculationStep extends ConsumerStatefulWidget {
  /// Constructor
  const CalculationStep({super.key});

  @override
  ConsumerState<CalculationStep> createState() => _CalculationStepState();
}

class _CalculationStepState extends ConsumerState<CalculationStep> {
  @override
  void initState() {
    super.initState();
    Future<void>.delayed(const Duration(seconds: 5)).then((_) {
      if (!mounted) return;
      ref.read(onBoardingViewModelProvider.notifier).nextStep();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const SizedBox(
            height: 80,
            width: 80,
            child: LoadingIndicator(
              indicatorType: Indicator.ballRotateChase,
              colors: <Color>[Colors.black],
            ),
          ),
          const Gap(32),
          Text(
            LocaleKeys.onboarding_calculation_preparing.tr(),
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w300,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
