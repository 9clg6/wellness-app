import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:starter_kit/domain/entities/goal.entity.dart';
import 'package:starter_kit/presentation/widgets/text_variant.dart';

/// Widget to display a goal card
class GoalCard extends StatelessWidget {
  /// Constructor
  const GoalCard({
    required this.goal,
    required this.isSelected,
    required this.onTap,
    super.key,
  });

  /// The goal to display
  final Goal goal;

  /// Whether the goal is selected
  final bool isSelected;

  /// Callback called on tap
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        decoration: BoxDecoration(
          color: isSelected ? goal.color : colorScheme.surface,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: isSelected ? goal.color : colorScheme.outline,
            width: isSelected ? 2 : 1,
          ),
          boxShadow: isSelected
              ? <BoxShadow>[
                  BoxShadow(
                    color: goal.color.withValues(alpha: 0.3),
                    blurRadius: 8,
                    offset: const Offset(0, 4),
                  ),
                ]
              : <BoxShadow>[
                  BoxShadow(
                    color: colorScheme.outline,
                    blurRadius: 4,
                    offset: const Offset(0, 2),
                  ),
                ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextVariant(
                goal.emoji,
                variantType: TextVariantType.headlineMedium,
              ),
              const SizedBox(height: 12),
              TextVariant(
                goal.title.tr(),
                textAlign: TextAlign.center,
                variantType: TextVariantType.titleSmall,
                fontWeight: FontWeight.w600,
                color: isSelected
                    ? colorScheme.onPrimary
                    : colorScheme.onSurface,
              ),
              const SizedBox(height: 4),
              TextVariant(
                goal.description.tr(),
                textAlign: TextAlign.center,
                variantType: TextVariantType.labelSmall,
                color: isSelected
                    ? colorScheme.onPrimary
                    : colorScheme.outline,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
