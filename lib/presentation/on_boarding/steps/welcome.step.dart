import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:starter_kit/core/localization/generated/locale_keys.g.dart';
import 'package:starter_kit/presentation/on_boarding/on_boarding.view_model.dart';
import 'package:starter_kit/presentation/widgets/continue_button_card.dart';

/// Étape d'accueil
class WelcomeStep extends ConsumerWidget {
  /// Constructor
  const WelcomeStep({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    final OnBoardingViewModel viewModel = ref.watch(
      onBoardingViewModelProvider.notifier,
    );
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          LocaleKeys.onboarding_welcomeMessage.tr(),
          textAlign: TextAlign.center,
          style: textTheme.titleLarge?.copyWith(
            fontSize: 24,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        const Gap(16),
        ContinueButtonCard(
          onTap: viewModel.nextStep,
          title: LocaleKeys.onboarding_getStarted.tr(),
        ),
      ],
    );
  }
}
