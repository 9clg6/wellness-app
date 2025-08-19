import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:starter_kit/core/localization/generated/locale_keys.g.dart';
import 'package:starter_kit/presentation/on_boarding/on_boarding.view_model.dart';
import 'package:starter_kit/presentation/widgets/continue_button_card.dart';
import 'package:starter_kit/presentation/widgets/gradient_background.dart';

/// Étape de pré-activation émotionnelle
class PreActivationStep extends ConsumerWidget {
  /// Constructor
  const PreActivationStep({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final OnBoardingViewModel viewModel = ref.watch(
      onBoardingViewModelProvider.notifier,
    );

    return GradientBackground(
      stackKey: GlobalKey(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              LocaleKeys.onboarding_preActivation_title.tr(),
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 20, color: Colors.black),
            ),
            const Gap(24),
            ContinueButtonCard(
              onTap: viewModel.nextStep,
              title: LocaleKeys.onboarding_preActivation_start.tr(),
            ),
          ],
        ),
      ),
    );
  }
}
