import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:starter_kit/core/localization/generated/locale_keys.g.dart';
import 'package:starter_kit/presentation/on_boarding/on_boarding.view_model.dart';
import 'package:starter_kit/presentation/widgets/custom_loader.dart';
import 'package:starter_kit/presentation/widgets/text_variant.dart';

/// Calculation/preparation animation step
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
      ref.read(onBoardingViewModelProvider.notifier).nextStep();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const CustomLoader(),
          const Gap(32),
          TextVariant(
            LocaleKeys.onboarding_calculation_preparing.tr(),
            variantType: TextVariantType.bodyLarge,
            fontWeight: FontWeight.w300,
          ),
        ],
      ),
    );
  }
}
