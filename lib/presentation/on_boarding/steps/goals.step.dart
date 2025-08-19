import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:starter_kit/core/localization/generated/locale_keys.g.dart';
import 'package:starter_kit/core/providers/core/services/onboarding.service.provider.dart';
import 'package:starter_kit/domain/entities/goal.entity.dart';
import 'package:starter_kit/presentation/on_boarding/on_boarding.view_model.dart';
import 'package:starter_kit/presentation/widgets/continue_button_card.dart';
import 'package:starter_kit/presentation/widgets/goal_card.widget.dart';

/// Personalized goals step
class GoalsStep extends ConsumerStatefulWidget {
  /// Constructor
  const GoalsStep({super.key});

  @override
  ConsumerState<GoalsStep> createState() => _GoalsStepState();
}

class _GoalsStepState extends ConsumerState<GoalsStep> {
  final Set<int> _selectedGoals = <int>{};

  static final List<Goal> _goals = <Goal>[
    const Goal(
      id: 0,
      title: LocaleKeys.onboarding_goals_stress_title,
      emoji: '😌',
      color: Color(0xFF4CAF50), // Green
      description: LocaleKeys.onboarding_goals_stress_description,
    ),
    const Goal(
      id: 1,
      title: LocaleKeys.onboarding_goals_sleep_title,
      emoji: '😴',
      color: Color(0xFF2196F3), // Blue
      description: LocaleKeys.onboarding_goals_sleep_description,
    ),
    const Goal(
      id: 2,
      title: LocaleKeys.onboarding_goals_confidence_title,
      emoji: '💪',
      color: Color(0xFFFF9800), // Orange
      description: LocaleKeys.onboarding_goals_confidence_description,
    ),
    const Goal(
      id: 3,
      title: LocaleKeys.onboarding_goals_gratitude_title,
      emoji: '🙏',
      color: Color(0xFF9C27B0), // Purple
      description: LocaleKeys.onboarding_goals_gratitude_description,
    ),
    const Goal(
      id: 4,
      title: LocaleKeys.onboarding_goals_emotions_title,
      emoji: '🧘',
      color: Color(0xFF607D8B), // Blue Grey
      description: LocaleKeys.onboarding_goals_emotions_description,
    ),
    const Goal(
      id: 5,
      title: LocaleKeys.onboarding_goals_relationships_title,
      emoji: '❤️',
      color: Color(0xFFE91E63), // Pink
      description: LocaleKeys.onboarding_goals_relationships_description,
    ),
    const Goal(
      id: 6,
      title: LocaleKeys.onboarding_goals_meaning_title,
      emoji: '🎯',
      color: Color(0xFF795548), // Brown
      description: LocaleKeys.onboarding_goals_meaning_description,
    ),
    const Goal(
      id: 7,
      title: LocaleKeys.onboarding_goals_resilience_title,
      emoji: '🌱',
      color: Color(0xFF8BC34A), // Light Green
      description: LocaleKeys.onboarding_goals_resilience_description,
    ),
  ];

  void _toggleGoal(int goalId) {
    setState(() {
      if (_selectedGoals.contains(goalId)) {
        _selectedGoals.remove(goalId);
      } else {
        _selectedGoals.add(goalId);
      }
    });
  }

  void _continue() {
    if (_selectedGoals.isNotEmpty) {
      // Save all selected goals
      for (final int goalId in _selectedGoals) {
        ref.read(onboardingServiceProvider.notifier).setGoal(goalId);
      }

      ref.read(onBoardingViewModelProvider.notifier)
        ..answers = ref.read(onboardingServiceProvider)
        ..nextStep();
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 32, bottom: 16),
              child: Text(
                LocaleKeys.onboarding_goals_title.tr(),
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 32),
              child: Text(
                LocaleKeys.onboarding_goals_subtitle.tr(),
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.grey[600]),
              ),
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  childAspectRatio: 1.1,
                ),
                itemCount: _goals.length,
                itemBuilder: (BuildContext context, int index) {
                  final Goal goal = _goals[index];
                  final bool isSelected = _selectedGoals.contains(goal.id);

                  return GoalCard(
                    goal: goal,
                    isSelected: isSelected,
                    onTap: () => _toggleGoal(goal.id),
                  );
                },
              ),
            ),
            ContinueButtonCard(
              onTap: _continue,
              title: _selectedGoals.isEmpty
                  ? LocaleKeys.onboarding_goals_button_empty.tr()
                  : _selectedGoals.length == 1
                  ? LocaleKeys.onboarding_goals_button_single.tr(
                      args: <String>[_selectedGoals.length.toString()],
                    )
                  : LocaleKeys.onboarding_goals_button_multiple.tr(
                      args: <String>[_selectedGoals.length.toString()],
                    ),
              color: _selectedGoals.isNotEmpty
                  ? Colors.pink[400]!
                  : Colors.grey[300]!,
              textColor: _selectedGoals.isNotEmpty
                  ? Colors.white
                  : Colors.black,
              fontSize: 20,
              fontWeight: _selectedGoals.isNotEmpty
                  ? FontWeight.w700
                  : FontWeight.w500,
            ),
          ],
        ),
      ),
    );
  }
}
