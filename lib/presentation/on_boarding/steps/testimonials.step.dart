import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:starter_kit/core/localization/generated/locale_keys.g.dart';
import 'package:starter_kit/presentation/on_boarding/on_boarding.view_model.dart';
import 'package:starter_kit/presentation/widgets/continue_button_card.dart';

/// Étape témoignages
class TestimonialsStep extends ConsumerWidget {
  /// Constructor
  const TestimonialsStep({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final OnBoardingViewModel viewModel = ref.watch(
      onBoardingViewModelProvider.notifier,
    );
    final List<String> testimonials = <String>[
      LocaleKeys.onboarding_testimonial_1.tr(),
      LocaleKeys.onboarding_testimonial_2.tr(),
    ];
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ...testimonials.map(
            (String t) => Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: Text(
                t,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 18, color: Colors.black),
              ),
            ),
          ),
          const Gap(24),
          ContinueButtonCard(
            onTap: viewModel.nextStep,
            title: LocaleKeys.continueBtn.tr(),
          ),
        ],
      ),
    );
  }
}
