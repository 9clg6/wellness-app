import 'package:flutter/material.dart';
import 'package:starter_kit/domain/entities/goal.entity.dart';

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
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        decoration: BoxDecoration(
          color: isSelected ? goal.color : Colors.white,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: isSelected ? goal.color : Colors.grey[300]!,
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
                    color: Colors.grey[200]!,
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
              // Emoji
              Text(goal.emoji, style: const TextStyle(fontSize: 32)),
              const SizedBox(height: 12),
              // Title
              Text(
                goal.title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: isSelected ? Colors.white : Colors.black87,
                ),
              ),
              const SizedBox(height: 4),
              // Description
              Text(
                goal.description,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 11,
                  color: isSelected ? Colors.white70 : Colors.grey[600],
                  fontStyle: FontStyle.italic,
                ),
              ),
              // Selection indicator
              if (isSelected)
                Positioned(
                  top: 8,
                  right: 8,
                  child: Container(
                    padding: const EdgeInsets.all(4),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(Icons.check, size: 16, color: goal.color),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
