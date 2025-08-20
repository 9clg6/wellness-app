import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:starter_kit/core/localization/generated/locale_keys.g.dart';
import 'package:starter_kit/domain/entities/solution_screen.entity.dart';
import 'package:starter_kit/presentation/on_boarding/on_boarding.view_model.dart';
import 'package:starter_kit/presentation/widgets/continue_button_card.dart';
import 'package:starter_kit/presentation/widgets/gradient_background.dart';
import 'package:starter_kit/presentation/widgets/solution_screen_card.widget.dart';

/// Solution presentation step
class SolutionStep extends ConsumerStatefulWidget {
  /// Constructor
  const SolutionStep({super.key});

  @override
  ConsumerState<SolutionStep> createState() => _SolutionStepState();
}

class _SolutionStepState extends ConsumerState<SolutionStep> {
  int _index = 0;

  static final List<SolutionScreen> _screens = <SolutionScreen>[
    const SolutionScreen(
      title: LocaleKeys.onboarding_solution_welcome_title,
      text: LocaleKeys.onboarding_solution_welcome_text,
      emoji: LocaleKeys.onboarding_solution_welcome_emoji,
    ),
    const SolutionScreen(
      title: LocaleKeys.onboarding_solution_facility_title,
      text: LocaleKeys.onboarding_solution_facility_text,
      emoji: LocaleKeys.onboarding_solution_facility_emoji,
    ),
    const SolutionScreen(
      title: LocaleKeys.onboarding_solution_interface_title,
      text: LocaleKeys.onboarding_solution_interface_text,
      emoji: LocaleKeys.onboarding_solution_interface_emoji,
    ),
    const SolutionScreen(
      title: LocaleKeys.onboarding_solution_history_title,
      text: LocaleKeys.onboarding_solution_history_text,
      emoji: LocaleKeys.onboarding_solution_history_emoji,
    ),
    const SolutionScreen(
      title: LocaleKeys.onboarding_solution_stats_title,
      text: LocaleKeys.onboarding_solution_stats_text,
      emoji: LocaleKeys.onboarding_solution_stats_emoji,
    ),
    const SolutionScreen(
      title: LocaleKeys.onboarding_solution_premium_title,
      text: LocaleKeys.onboarding_solution_premium_text,
      emoji: LocaleKeys.onboarding_solution_premium_emoji,
    ),
  ];

  void _next() {
    if (_index < _screens.length - 1) {
      setState(() {
        _index++;
      });
    } else {
      ref.read(onBoardingViewModelProvider.notifier).nextStep();
    }
  }

  @override
  Widget build(BuildContext context) {
    return GradientBackground(
      stackKey: GlobalKey(),
      child: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: IndexedStack(
                index: _index,
                children: _screens
                    .map(
                      (SolutionScreen screen) =>
                          SolutionScreenCard(screen: screen),
                    )
                    .toList(),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List<Widget>.generate(
                6,
                (int i) => Container(
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  width: 8,
                  height: 8,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: i == _index
                        ? Colors.black
                        : Colors.black.withValues(alpha: 0.3),
                  ),
                ),
              ),
            ),
            const Gap(24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: ContinueButtonCard(
                onTap: _next,
                title: LocaleKeys.common_next.tr(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
