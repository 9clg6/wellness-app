import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:welly/domain/entities/solution.entity.dart';
import 'package:welly/presentation/widgets/text_variant.dart';

/// Widget to display a solution screen card
class SolutionScreenCard extends StatelessWidget {
  /// Constructor
  const SolutionScreenCard({required this.entity, super.key});

  /// The solution screen to display
  final SolutionScreenEntity entity;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24),
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Emoji
            Text(entity.emoji.tr(), style: const TextStyle(fontSize: 80)),
            const SizedBox(height: 32),
            // Title
            TextVariant(
              entity.title.tr(),
              textAlign: TextAlign.center,
              variantType: TextVariantType.titleLarge,
            ),
            const SizedBox(height: 16),
            // Text
            TextVariant(
              entity.text.tr(),
              textAlign: TextAlign.center,
              variantType: TextVariantType.bodyLarge,
            ),
          ],
        ),
      ),
    );
  }
}
