import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:welly/domain/entities/testimonial.entity.dart';
import 'package:welly/presentation/widgets/text_variant.dart';

/// Widget to display a testimonial card
class TestimonialCard extends StatelessWidget {
  /// Constructor
  const TestimonialCard({required this.testimonial, super.key});

  /// The testimonial to display
  final Testimonial testimonial;

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;

    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: colorScheme.surface,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: colorScheme.primary),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              TextVariant(
                testimonial.emoji,
                variantType: TextVariantType.displaySmall,
              ),
              const SizedBox(width: 12),
              Expanded(
                child: TextVariant(
                  testimonial.author.tr(),
                  variantType: TextVariantType.titleMedium,
                  fontWeight: FontWeight.w600,
                  color: colorScheme.primary,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          TextVariant(
            testimonial.quote.tr(),
          ),
          const SizedBox(height: 12),
          TextVariant(
            '${testimonial.source.tr()} (${testimonial.year})',
            variantType: TextVariantType.bodySmall,
            color: colorScheme.outline,
          ),
        ],
      ),
    );
  }
}
