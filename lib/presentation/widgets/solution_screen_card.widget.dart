import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:starter_kit/domain/entities/solution_screen.entity.dart';

/// Widget to display a solution screen card
class SolutionScreenCard extends StatelessWidget {
  /// Constructor
  const SolutionScreenCard({required this.screen, super.key});

  /// The solution screen to display
  final SolutionScreen screen;

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
            Text(screen.emoji.tr(), style: const TextStyle(fontSize: 80)),
            const SizedBox(height: 32),
            // Title
            Text(
              screen.title.tr(),
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Colors.black,
                height: 1.3,
              ),
            ),
            const SizedBox(height: 16),
            // Text
            Text(
              screen.text.tr(),
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 18,
                color: Colors.black,
                fontWeight: FontWeight.w300,
                height: 1.4,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
