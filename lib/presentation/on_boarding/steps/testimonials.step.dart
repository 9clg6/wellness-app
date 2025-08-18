import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:starter_kit/core/localization/generated/locale_keys.g.dart';
import 'package:starter_kit/domain/entities/testimonial.entity.dart';
import 'package:starter_kit/presentation/on_boarding/on_boarding.view_model.dart';
import 'package:starter_kit/presentation/widgets/testimonial_card.widget.dart';

/// Testimonials step
class TestimonialsStep extends ConsumerWidget {
  /// Constructor
  const TestimonialsStep({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final OnBoardingViewModel viewModel = ref.watch(
      onBoardingViewModelProvider.notifier,
    );

    final List<Testimonial> testimonials = <Testimonial>[
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

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: <Widget>[
            // Section title
            Padding(
              padding: const EdgeInsets.only(top: 32, bottom: 24),
              child: Text(
                LocaleKeys.onboarding_testimonials_title.tr(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.pink[700],
                ),
              ),
            ),
            // Subtitle
            Padding(
              padding: const EdgeInsets.only(bottom: 32),
              child: Text(
                LocaleKeys.onboarding_testimonials_subtitle.tr(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[600],
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            // Scientific testimonials list
            Expanded(
              child: ListView.builder(
                itemCount: testimonials.length,
                itemBuilder: (BuildContext context, int index) {
                  final Testimonial testimonial = testimonials[index];
                  return TestimonialCard(testimonial: testimonial);
                },
              ),
            ),
            // Continue button
            Padding(
              padding: const EdgeInsets.only(bottom: 24, top: 16),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: viewModel.nextStep,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pink[400],
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Text(
                    LocaleKeys.continueBtn.tr(),
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
