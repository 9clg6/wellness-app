import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:starter_kit/presentation/on_boarding/on_boarding.view_model.dart';
import 'package:starter_kit/presentation/widgets/continue_button_card.dart';

/// Étape de présentation de la solution
class SolutionStep extends ConsumerStatefulWidget {
  const SolutionStep({super.key});

  @override
  ConsumerState<SolutionStep> createState() => _SolutionStepState();
}

class _SolutionStepState extends ConsumerState<SolutionStep> {
  final PageController _controller = PageController();
  int _index = 0;

  static const List<String> _texts = <String>[
    'Facilité : 3 minutes par jour, n’importe où.',
    'Interface apaisante : claire et simple.',
    'Historique & souvenirs : revois tes moments positifs.',
    'Statistiques & progression : vois tes jours consécutifs.',
    'Bonus premium : bilans mensuels + suggestions IA personnalisées.',
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
