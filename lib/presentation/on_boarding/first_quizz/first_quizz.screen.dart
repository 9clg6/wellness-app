import 'package:collection/collection.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:starter_kit/core/localization/generated/locale_keys.g.dart';
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

    ref.listen(firstQuizzViewModelProvider, (
      FirstQuizzState? prev,
      FirstQuizzState next,
    ) {
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
            Text(
              LocaleKeys.onboarding_questionTitle.tr(args: const <String>['1']),
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const Gap(62),
            Text(
              LocaleKeys.onboarding_q1_text.tr(),
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
            const Gap(46),
            ..._answers.mapIndexed((int index, String answer) {
              final int? selected = ref
                  .watch(firstQuizzViewModelProvider)
                  .selectedResponseIndex;
              return Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: OnBoardingButton(
                  onTap: () => viewModel.selectFrequency(index),
                  title: answer,
                  isSelected: selected == index,
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}

class _Q2Discovery extends ConsumerWidget {
  const _Q2Discovery();

  static final List<String> _answers = <String>[
    LocaleKeys.onboarding_opt_social.tr(),
    LocaleKeys.onboarding_opt_friend.tr(),
    LocaleKeys.onboarding_opt_other.tr(),
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
            Text(
              LocaleKeys.onboarding_questionTitle.tr(args: const <String>['2']),
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const Gap(62),
            Text(
              LocaleKeys.onboarding_q2_text.tr(),
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
            const Gap(46),
            ..._answers.mapIndexed((int index, String answer) {
              final int? selected = ref
                  .watch(firstQuizzViewModelProvider)
                  .selectedResponseIndex;
              return Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: OnBoardingButton(
                  onTap: () => viewModel.selectDiscoverySource(index),
                  title: answer,
                  isSelected: selected == index,
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}

class _Q3Theme extends ConsumerWidget {
  const _Q3Theme();

  static final List<String> _answers = <String>[
    LocaleKeys.onboarding_opt_wellbeing.tr(),
    LocaleKeys.onboarding_opt_motivation.tr(),
    LocaleKeys.onboarding_opt_spirituality.tr(),
    LocaleKeys.onboarding_opt_relationships.tr(),
    LocaleKeys.onboarding_opt_other.tr(),
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
            Text(
              LocaleKeys.onboarding_questionTitle.tr(args: const <String>['3']),
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const Gap(62),
            Text(
              LocaleKeys.onboarding_q3_text.tr(),
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
            const Gap(46),
            ..._answers.mapIndexed((int index, String answer) {
              final int? selected = ref
                  .watch(firstQuizzViewModelProvider)
                  .selectedResponseIndex;
              return Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: OnBoardingButton(
                  onTap: () => viewModel.selectFavoriteTheme(index),
                  title: answer,
                  isSelected: selected == index,
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}

class _Q4PracticeDuration extends ConsumerWidget {
  const _Q4PracticeDuration();

  static final List<String> _answers = <String>[
    LocaleKeys.onboarding_opt_never.tr(),
    LocaleKeys.onboarding_opt_lt1y.tr(),
    LocaleKeys.onboarding_opt_gt1y.tr(),
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
            Text(
              LocaleKeys.onboarding_questionTitle.tr(args: const <String>['4']),
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const Gap(62),
            Text(
              LocaleKeys.onboarding_q4_text.tr(),
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
            const Gap(46),
            ..._answers.mapIndexed((int index, String answer) {
              final int? selected = ref
                  .watch(firstQuizzViewModelProvider)
                  .selectedResponseIndex;
              return Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: OnBoardingButton(
                  onTap: () => viewModel.selectPracticeDuration(index),
                  title: answer,
                  isSelected: selected == index,
                ),
              );
            }),
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
            Text(
              LocaleKeys.onboarding_questionTitle.tr(args: const <String>['5']),
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const Gap(62),
            Text(
              LocaleKeys.onboarding_q5_text.tr(),
              style: const TextStyle(
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
                final int? selected = ref
                    .watch(firstQuizzViewModelProvider)
                    .selectedResponseIndex;
                final bool isSelected = (selected == i);
                return ChoiceChip(
                  selected: isSelected,
                  label: Text('$score'),
                  onSelected: (_) => viewModel.selectSerenityScore(score),
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
            Text(
              LocaleKeys.onboarding_questionTitle.tr(args: const <String>['6']),
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const Gap(62),
            Text(
              LocaleKeys.onboarding_q6_text.tr(),
              style: const TextStyle(
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
                    SnackBar(
                      content: Text(LocaleKeys.onboarding_q6_error.tr()),
                    ),
                  );
                }
              },
              title: LocaleKeys.continueBtn.tr(),
            ),
          ],
        ),
      ),
    );
  }
}
