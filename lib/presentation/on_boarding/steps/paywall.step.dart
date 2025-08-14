import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:starter_kit/core/localization/generated/locale_keys.g.dart';
import 'package:starter_kit/presentation/on_boarding/on_boarding.view_model.dart';

/// Étape paywall personnalisé
class PaywallStep extends ConsumerWidget {
  /// Constructor
  const PaywallStep({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final OnBoardingViewModel viewModel = ref.watch(
      onBoardingViewModelProvider.notifier,
    );
    final String name = viewModel.answers.firstName ?? 'toi';
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            LocaleKeys.onboarding_paywall_title.tr(args: <String>[name]),
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 20, color: Colors.black),
          ),
          const Gap(24),
          ElevatedButton(
            onPressed: viewModel.nextStep,
            child: Text(LocaleKeys.onboarding_paywall_annual.tr()),
          ),
          const Gap(12),
          ElevatedButton(
            onPressed: viewModel.nextStep,
            child: Text(LocaleKeys.onboarding_paywall_monthly.tr()),
          ),
          const Gap(12),
          TextButton(
            onPressed: viewModel.nextStep,
            child: Text(LocaleKeys.common_later.tr()),
          ),
          const Gap(12),
          Text(
            LocaleKeys.onboarding_paywall_cancel.tr(),
            style: const TextStyle(color: Colors.black54),
          ),
        ],
      ),
    );
  }
}
