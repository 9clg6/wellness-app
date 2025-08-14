import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:starter_kit/core/localization/generated/locale_keys.g.dart';
import 'package:starter_kit/presentation/on_boarding/on_boarding.view_model.dart';
import 'package:starter_kit/presentation/widgets/continue_button_card.dart';

/// Étape de présentation de la solution
class SolutionStep extends ConsumerStatefulWidget {
  /// Constructor
  const SolutionStep({super.key});

  @override
  ConsumerState<SolutionStep> createState() => _SolutionStepState();
}

class _SolutionStepState extends ConsumerState<SolutionStep> {
  final PageController _controller = PageController();
  int _index = 0;

  late final List<String> _texts = <String>[
    LocaleKeys.onboarding_solution_1.tr(),
    LocaleKeys.onboarding_solution_2.tr(),
    LocaleKeys.onboarding_solution_3.tr(),
    LocaleKeys.onboarding_solution_4.tr(),
    LocaleKeys.onboarding_solution_5.tr(),
  ];

  void _next() {
    if (_index < _texts.length - 1) {
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
    return Column(
      children: <Widget>[
        Expanded(
          child: PageView(
            controller: _controller,
            physics: const NeverScrollableScrollPhysics(),
            children: _texts
                .map(
                  (String t) => Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Text(
                        t,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 24),
          child: ContinueButtonCard(
            onTap: _next,
            title: LocaleKeys.common_next.tr(),
          ),
        ),
      ],
    );
  }
}
