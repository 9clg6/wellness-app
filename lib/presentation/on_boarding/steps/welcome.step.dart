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

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: Colors.white,
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
                    fontWeight: FontWeight.w300,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text: LocaleKeys.onboarding_welcomeMessage2.tr(),
                  style: textTheme.titleLarge?.copyWith(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: Colors.pink,
                  ),
                ),
              ],
            ),
          ),
          const Gap(32),
          ContinueButtonCard(
            onTap: viewModel.nextStep,
            title: LocaleKeys.onboarding_getStarted.tr(),
            width: double.infinity,

            color: Colors.pink,
            textColor: Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: 18,
          ),
        ],
      ),
    );
  }
}
