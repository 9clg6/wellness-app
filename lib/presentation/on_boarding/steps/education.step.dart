import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:starter_kit/presentation/on_boarding/on_boarding.view_model.dart';
import 'package:starter_kit/presentation/widgets/continue_button_card.dart';

/// Étape d'éducation (bénéfices)
class EducationStep extends ConsumerStatefulWidget {
  const EducationStep({super.key});

  @override
  ConsumerState<EducationStep> createState() => _EducationStepState();
}

class _EducationStepState extends ConsumerState<EducationStep> {
  final PageController _controller = PageController();
  int _index = 0;

  static const List<String> _texts = <String>[
    '🌱 Réduit le stress et améliore l’humeur.',
    '❤️ Renforce les relations positives.',
    '🧠 Améliore le sommeil et la concentration.',
    '📈 Effet cumulatif puissant sur la qualité de vie.',
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
          child: ContinueButtonCard(onTap: _next, title: 'Suivant'),
        ),
      ],
    );
  }
}
