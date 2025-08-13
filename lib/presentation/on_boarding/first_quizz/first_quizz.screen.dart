import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:starter_kit/presentation/on_boarding/first_quizz/first_quizz.state.dart';
import 'package:starter_kit/presentation/on_boarding/first_quizz/first_quizz.view_model.dart';
import 'package:starter_kit/presentation/widgets/continue_button_card.dart';
import 'package:starter_kit/presentation/widgets/on_boarding_button.dart';

/// First personal engagement quiz
class FirstPersonalEngagementQuiz extends ConsumerWidget {
  /// Constructor
  const FirstPersonalEngagementQuiz({this.onEnd, super.key});

  /// Callback à la fin du quiz
  final VoidCallback? onEnd;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final FirstQuizzViewModel viewModel = ref.watch(
      firstQuizzViewModelProvider.notifier,
    );

    ref.listen(firstQuizzViewModelProvider, (FirstQuizzState? prev, FirstQuizzState next) {
      if (next.isCompleted == true && onEnd != null) {
        onEnd!.call();
      }
    });

    return PageView(
      physics: const NeverScrollableScrollPhysics(),
      controller: viewModel.pageController,
      children: const <Widget>[
        _Q1Frequency(),
        _Q2Discovery(),
        _Q3Theme(),
        _Q4PracticeDuration(),
        _Q5Serenity(),
        _Q6Identity(),
      ],
    );
  }
}

class _Q1Frequency extends ConsumerWidget {
  const _Q1Frequency();

  static const List<String> _answers = <String>['Jamais', 'Parfois', 'Souvent'];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final FirstQuizzViewModel viewModel = ref.watch(
      firstQuizzViewModelProvider.notifier,
    );

    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Gap(32),
            const Text(
              'Question #1',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const Gap(62),
            const Text(
              'Quelle est ta fréquence actuelle d’écriture ou de réflexion positive ?',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
            const Gap(46),
            ..._answers.mapIndexed(
              (int index, String answer) => Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: OnBoardingButton(
                  onTap: () => viewModel.selectFrequency(index),
                  title: answer,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _Q2Discovery extends ConsumerWidget {
  const _Q2Discovery();

  static const List<String> _answers = <String>[
    'Réseau social',
    'Ami',
    'Autre',
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final FirstQuizzViewModel viewModel = ref.watch(
      firstQuizzViewModelProvider.notifier,
    );

    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Gap(32),
            const Text(
              'Question #2',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const Gap(62),
            const Text(
              'Où as-tu entendu parler de nous ?',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
            const Gap(46),
            ..._answers.mapIndexed(
              (int index, String answer) => Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: OnBoardingButton(
                  onTap: () => viewModel.selectDiscoverySource(index),
                  title: answer,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _Q3Theme extends ConsumerWidget {
  const _Q3Theme();

  static const List<String> _answers = <String>[
    'Bien-être',
    'Motivation',
    'Spiritualité',
    'Relations',
    'Autre',
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final FirstQuizzViewModel viewModel = ref.watch(
      firstQuizzViewModelProvider.notifier,
    );

    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Gap(32),
            const Text(
              'Question #3',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const Gap(62),
            const Text(
              'Quel thème t’inspire le plus ?',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
            const Gap(46),
            ..._answers.mapIndexed(
              (int index, String answer) => Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: OnBoardingButton(
                  onTap: () => viewModel.selectFavoriteTheme(index),
                  title: answer,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _Q4PracticeDuration extends ConsumerWidget {
  const _Q4PracticeDuration();

  static const List<String> _answers = <String>['Jamais', '< 1 an', '> 1 an'];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final FirstQuizzViewModel viewModel = ref.watch(
      firstQuizzViewModelProvider.notifier,
    );

    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Gap(32),
            const Text(
              'Question #4',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const Gap(62),
            const Text(
              'Depuis quand pratiques-tu la gratitude ou une activité similaire ?',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
            const Gap(46),
            ..._answers.mapIndexed(
              (int index, String answer) => Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: OnBoardingButton(
                  onTap: () => viewModel.selectPracticeDuration(index),
                  title: answer,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _Q5Serenity extends ConsumerWidget {
  const _Q5Serenity();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final FirstQuizzViewModel viewModel = ref.watch(
      firstQuizzViewModelProvider.notifier,
    );

    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Gap(32),
            const Text(
              'Question #5',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const Gap(62),
            const Text(
              'Ces derniers jours, à quel point as-tu ressenti de la sérénité ?',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
            const Gap(32),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List<Widget>.generate(5, (int i) {
                final int score = i + 1;
                return ElevatedButton(
                  onPressed: () => viewModel.selectSerenityScore(score),
                  child: Text('$score'),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}

class _Q6Identity extends ConsumerWidget {
  const _Q6Identity();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final FirstQuizzViewModel viewModel = ref.watch(
      firstQuizzViewModelProvider.notifier,
    );

    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Gap(32),
            const Text(
              'Question #6',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const Gap(62),
            const Text(
              'Ton petit prénom et ton âge ?',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
            const Gap(24),
            TextField(
              onChanged: viewModel.setTempName,
              decoration: const InputDecoration(
                hintText: 'Prénom',
                border: OutlineInputBorder(),
              ),
            ),
            const Gap(12),
            TextField(
              onChanged: viewModel.setTempAge,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                hintText: 'Âge',
                border: OutlineInputBorder(),
              ),
            ),
            const Gap(24),
            ContinueButtonCard(
              onTap: () {
                final bool ok = viewModel.completeQuizz();
                if (!ok) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text(
                        'Merci de renseigner un prénom et un âge valide.',
                      ),
                    ),
                  );
                }
              },
              title: 'Continuer',
            ),
          ],
        ),
      ),
    );
  }
}
