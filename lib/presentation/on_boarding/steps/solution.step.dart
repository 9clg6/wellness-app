import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:starter_kit/core/localization/generated/locale_keys.g.dart';
import 'package:starter_kit/domain/entities/solution_screen.entity.dart';
import 'package:starter_kit/presentation/on_boarding/on_boarding.view_model.dart';
import 'package:starter_kit/presentation/widgets/solution_screen_card.widget.dart';

/// Solution presentation step
class SolutionStep extends ConsumerStatefulWidget {
  /// Constructor
  const SolutionStep({super.key});

  @override
  ConsumerState<SolutionStep> createState() => _SolutionStepState();
}

class _SolutionStepState extends ConsumerState<SolutionStep> {
  final PageController _controller = PageController();
  int _index = 0;

  static final List<SolutionScreen> _screens = <SolutionScreen>[
    const SolutionScreen(
      title: LocaleKeys.onboarding_solution_welcome_title,
      text: LocaleKeys.onboarding_solution_welcome_text,
      emoji: LocaleKeys.onboarding_solution_welcome_emoji,
      color: Color(0xFF1976D2), // Blue 700
    ),
    const SolutionScreen(
      title: LocaleKeys.onboarding_solution_facility_title,
      text: LocaleKeys.onboarding_solution_facility_text,
      emoji: LocaleKeys.onboarding_solution_facility_emoji,
      color: Color(0xFF7B1FA2), // Purple 700
    ),
    const SolutionScreen(
      title: LocaleKeys.onboarding_solution_interface_title,
      text: LocaleKeys.onboarding_solution_interface_text,
      emoji: LocaleKeys.onboarding_solution_interface_emoji,
      color: Color(0xFF388E3C), // Green 700
    ),
    const SolutionScreen(
      title: LocaleKeys.onboarding_solution_history_title,
      text: LocaleKeys.onboarding_solution_history_text,
      emoji: LocaleKeys.onboarding_solution_history_emoji,
      color: Color(0xFFF57C00), // Orange 700
    ),
    const SolutionScreen(
      title: LocaleKeys.onboarding_solution_stats_title,
      text: LocaleKeys.onboarding_solution_stats_text,
      emoji: LocaleKeys.onboarding_solution_stats_emoji,
      color: Color(0xFFE91E63), // Pink 600
    ),
    const SolutionScreen(
      title: LocaleKeys.onboarding_solution_premium_title,
      text: LocaleKeys.onboarding_solution_premium_text,
      emoji: LocaleKeys.onboarding_solution_premium_emoji,
      color: Color(0xFFD32F2F), // Red 700
    ),
  ];

  void _next() {
    if (_index < _screens.length - 1) {
      _index++;
      _controller.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
      setState(() {});
    } else {
      ref.read(onBoardingViewModelProvider.notifier).nextStep();
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: <Widget>[
          // Page indicator with 6 dots
          Padding(
            padding: const EdgeInsets.only(top: 24, bottom: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List<Widget>.generate(
                6,
                (int i) => Container(
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  width: 12,
                  height: 12,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: i == _index
                        ? Colors.black
                        : Colors.black.withOpacity(0.3),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: PageView(
              controller: _controller,
              physics: const NeverScrollableScrollPhysics(),
              children: _screens
                  .map(
                    (SolutionScreen screen) =>
                        SolutionScreenCard(screen: screen),
                  )
                  .toList(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 24),
            child: TextButton(
              onPressed: _next,
              child: Text(
                LocaleKeys.common_next.tr(),
                style: const TextStyle(
                  color: Colors.pink,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
