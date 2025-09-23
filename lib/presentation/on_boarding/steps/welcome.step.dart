import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:welly/core/localization/generated/locale_keys.g.dart';
import 'package:welly/presentation/on_boarding/on_boarding.view_model.dart';
import 'package:welly/presentation/widgets/continue_button_card.dart';

/// Welcome step
class WelcomeStep extends ConsumerWidget {
  /// Constructor
  const WelcomeStep({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final OnBoardingViewModel viewModel = ref.watch(
      onBoardingViewModelProvider.notifier,
    );

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: colorScheme.surface,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              children: <TextSpan>[
                TextSpan(
                  text: LocaleKeys.onboarding_welcomeMessage.tr(),
                  style: textTheme.titleLarge?.copyWith(
                    fontSize: 22,
                    color: colorScheme.onSurface,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                TextSpan(
                  text: LocaleKeys.onboarding_welcomeMessage2.tr(),
                  style: textTheme.titleLarge?.copyWith(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    color: colorScheme.primary,
                  ),
                ),
              ],
            ),
          ),
          const Gap(24),
          ContinueButtonCard(
            onTap: viewModel.nextStep,
            title: LocaleKeys.onboarding_getStarted.tr(),
            color: colorScheme.primary,
            textColor: colorScheme.onPrimary,
            fontWeight: FontWeight.w600,
            fontSize: 20,
            width: 250,
          ),
        ],
      ),
    );
  }
}
