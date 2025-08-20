import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:starter_kit/core/localization/generated/locale_keys.g.dart';
import 'package:starter_kit/presentation/on_boarding/on_boarding.view_model.dart';
import 'package:starter_kit/presentation/widgets/continue_button_card.dart';
import 'package:starter_kit/presentation/widgets/gradient_background.dart';
import 'package:starter_kit/presentation/widgets/text_variant.dart';

/// Positive mini-diagnostic step
class MiniDiagnosticStep extends ConsumerWidget {
  /// Constructor
  const MiniDiagnosticStep({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final String name = ref
        .watch(onBoardingViewModelProvider.notifier)
        .answers
        .firstName!;
        
    final OnBoardingViewModel viewModel = ref.watch(
      onBoardingViewModelProvider.notifier,
    );
    return GradientBackground(
      stackKey: GlobalKey<ScaffoldState>(),
      opacity: 0.3,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextVariant(
              LocaleKeys.onboarding_miniDiagnostic.tr(args: <String>[name]),
              textAlign: TextAlign.center,
              variantType: TextVariantType.bodyLarge,
            ),
            const Gap(24),
            ContinueButtonCard(
              onTap: viewModel.nextStep,
              title: LocaleKeys.onboarding_miniDiagnostic_button.tr(),
            ),
          ],
        ),
      ),
    );
  }
}
