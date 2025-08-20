import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:starter_kit/core/localization/generated/locale_keys.g.dart';
import 'package:starter_kit/domain/entities/testimonial.entity.dart';
import 'package:starter_kit/presentation/on_boarding/on_boarding.view_model.dart';
import 'package:starter_kit/presentation/widgets/continue_button_card.dart';
import 'package:starter_kit/presentation/widgets/testimonial_card.widget.dart';
import 'package:starter_kit/presentation/widgets/text_variant.dart';

/// Testimonials step
class TestimonialsStep extends ConsumerWidget {
  /// Constructor
  const TestimonialsStep({super.key});

  /// Testimonials
  static final List<Testimonial> _testimonials = <Testimonial>[
    const Testimonial(
      quote: LocaleKeys.onboarding_testimonial_emmons_quote,
      author: LocaleKeys.onboarding_testimonial_emmons_author,
      source: LocaleKeys.onboarding_testimonial_emmons_source,
      year: 2003,
      emoji: '📊',
    ),
    const Testimonial(
      quote: LocaleKeys.onboarding_testimonial_meta_quote,
      author: LocaleKeys.onboarding_testimonial_meta_author,
      source: LocaleKeys.onboarding_testimonial_meta_source,
      year: 2023,
      emoji: '🧠',
    ),
    const Testimonial(
      quote: LocaleKeys.onboarding_testimonial_proyer_quote,
      author: LocaleKeys.onboarding_testimonial_proyer_author,
      source: LocaleKeys.onboarding_testimonial_proyer_source,
      year: 2023,
      emoji: '✨',
    ),
    const Testimonial(
      quote: LocaleKeys.onboarding_testimonial_bohlmeijer_quote,
      author: LocaleKeys.onboarding_testimonial_bohlmeijer_author,
      source: LocaleKeys.onboarding_testimonial_bohlmeijer_source,
      year: 2021,
      emoji: '📚',
    ),
    const Testimonial(
      quote: LocaleKeys.onboarding_testimonial_hanc_quote,
      author: LocaleKeys.onboarding_testimonial_hanc_author,
      source: LocaleKeys.onboarding_testimonial_hanc_source,
      year: 2022,
      emoji: '📈',
    ),
    const Testimonial(
      quote: LocaleKeys.onboarding_testimonial_berkeley_quote,
      author: LocaleKeys.onboarding_testimonial_berkeley_author,
      source: LocaleKeys.onboarding_testimonial_berkeley_source,
      year: 2023,
      emoji: '🎓',
    ),
    const Testimonial(
      quote: LocaleKeys.onboarding_testimonial_dickens_quote,
      author: LocaleKeys.onboarding_testimonial_dickens_author,
      source: LocaleKeys.onboarding_testimonial_dickens_source,
      year: 2025,
      emoji: '🌍',
    ),
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final OnBoardingViewModel viewModel = ref.watch(
      onBoardingViewModelProvider.notifier,
    );

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 32, bottom: 12),
              child: TextVariant(
                LocaleKeys.onboarding_testimonials_title.tr(),
                textAlign: TextAlign.center,
                variantType: TextVariantType.headlineMedium,
                fontWeight: FontWeight.w700,
                color: colorScheme.primary,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 32),
              child: TextVariant(
                LocaleKeys.onboarding_testimonials_subtitle.tr(),
                textAlign: TextAlign.center,
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: _testimonials.length,
                itemBuilder: (BuildContext context, int index) {
                  final Testimonial testimonial = _testimonials[index];
                  return TestimonialCard(testimonial: testimonial);
                },
              ),
            ),
            ContinueButtonCard(
              onTap: viewModel.nextStep,
              title: LocaleKeys.continueBtn.tr(),
              color: Colors.pink[400],
              textColor: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ],
        ),
      ),
    );
  }
}
