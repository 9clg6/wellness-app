import 'dart:math';

import 'package:flutter/material.dart';

/// Small visual stack of cards displayed below the active card to indicate
/// how many cards remain to be filled.
class CardsStackIndicator extends StatelessWidget {
  /// Constructor
  const CardsStackIndicator({
    required this.belowCount,
    super.key,
    this.borderRadius = 32,
    this.verticalOffset = 14,
  });

  /// Number of cards to draw below the active one
  final int belowCount;

  /// Border radius for the simulated cards
  final double borderRadius;

  /// Vertical offset between each simulated card
  final double verticalOffset;

  @override
  Widget build(BuildContext context) {
    if (belowCount <= 0) return const SizedBox.shrink();

    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final double width = constraints.maxWidth;
        final double height = constraints.maxHeight;

        final int safeCount = max(0, belowCount);
        final List<Widget> layers = <Widget>[];

        for (int i = safeCount - 1; i >= 0; i--) {
          final double dy = (i + 1) * verticalOffset;
          final double scale = 1 - (i + 1) * 0.02;

          layers.add(
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Transform.translate(
                offset: Offset(0, dy),
                child: Transform.scale(
                  scale: scale.clamp(0.9, 1.0),
                  child: IgnorePointer(
                    child: Container(
                      width: width,
                      height: height,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(borderRadius),
                        border: Border.all(
                          color: Colors.black.withValues(alpha: 0.1),
                        ),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                            color: Colors.black.withValues(alpha: 0.1),
                            blurRadius: 16,
                            spreadRadius: 1,
                            offset: const Offset(0, 4),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        }

        return Stack(children: layers);
      },
    );
  }
}
