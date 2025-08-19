import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:starter_kit/core/localization/generated/locale_keys.g.dart';
import 'package:starter_kit/presentation/on_boarding/on_boarding.view_model.dart';
import 'package:starter_kit/presentation/widgets/continue_button_card.dart';

/// Étape post-paywall (ou après refus)
class PostPaywallStep extends ConsumerWidget {
  /// Constructor
  const PostPaywallStep({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            LocaleKeys.onboarding_postPaywall_subtitle.tr(),
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 18, color: Colors.black),
          ),
          const Gap(24),
          ContinueButtonCard(
            onTap: () async {
              await ref
                  .read(onBoardingViewModelProvider.notifier)
                  .completeOnboarding();
            },
            title: LocaleKeys.onboarding_postPaywall_enter.tr(),
          ),
        ],
      ),
    );
  }
}
