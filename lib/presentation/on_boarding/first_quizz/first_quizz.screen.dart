import 'package:collection/collection.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:starter_kit/core/localization/generated/locale_keys.g.dart';
import 'package:starter_kit/presentation/on_boarding/first_quizz/first_quizz.state.dart';
import 'package:starter_kit/presentation/on_boarding/first_quizz/first_quizz.view_model.dart';
import 'package:starter_kit/presentation/widgets/continue_button_card.dart';
import 'package:starter_kit/presentation/widgets/form_input.dart';
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

    final Color? backgroundColor = Colors.pink[100]?.withValues(alpha: 0.5);

    return Center(
      child: Container(
        decoration: BoxDecoration(color: backgroundColor),
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              LocaleKeys.onboarding_questionTitle.tr(args: const <String>['1']),
              style: const TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const Gap(32),
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

    final Color? backgroundColor = Colors.greenAccent[100]?.withValues(
      alpha: 0.4,
    );

    return Center(
      child: Container(
        decoration: BoxDecoration(color: backgroundColor),
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              LocaleKeys.onboarding_questionTitle.tr(args: const <String>['2']),
              style: const TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const Gap(32),
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

    final Color? backgroundColor = Colors.blue[100]?.withValues(alpha: 0.4);

    return Center(
      child: Container(
        decoration: BoxDecoration(color: backgroundColor),
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              LocaleKeys.onboarding_questionTitle.tr(args: const <String>['3']),
              style: const TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const Gap(32),
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

    final Color? backgroundColor = Colors.yellow[100]?.withValues(alpha: 0.4);

    return Center(
      child: Container(
        decoration: BoxDecoration(color: backgroundColor),
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              LocaleKeys.onboarding_questionTitle.tr(args: const <String>['4']),
              style: const TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const Gap(32),
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

    final Color? backgroundColor = Colors.purple[100]?.withValues(alpha: 0.4);

    return Center(
      child: Container(
        decoration: BoxDecoration(color: backgroundColor),
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              LocaleKeys.onboarding_questionTitle.tr(args: const <String>['5']),
              style: const TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const Gap(32),
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
                  label: Text(
                    '$score',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: isSelected ? Colors.white : Colors.black,
                    ),
                  ),
                  backgroundColor: Colors.white,
                  selectedColor: Colors.black,
                  checkmarkColor: Colors.white,
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

    final Color? backgroundColor = Colors.orange[100]?.withValues(alpha: 0.4);

    return Center(
      child: Container(
        decoration: BoxDecoration(color: backgroundColor),
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              LocaleKeys.onboarding_questionTitle.tr(args: const <String>['6']),
              style: const TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const Gap(32),
            Text(
              LocaleKeys.onboarding_q6_text.tr(),
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
            const Gap(24),
            Form(
              key: viewModel.formKey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  SizedBox(
                    height: 70,
                    width: double.infinity,
                    child: FormInput(
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return LocaleKeys.onboarding_q6_name_required.tr();
                        }
                        return null;
                      },
                      style: Theme.of(
                        context,
                      ).textTheme.bodyMedium?.copyWith(color: Colors.black),
                      minLines: null,
                      expands: true,
                      controller: viewModel.tempNameController,
                      labelText: LocaleKeys.onboarding_q6_firstName_placeholder
                          .tr(),
                      autoValidate: false,
                      labelStyle: Theme.of(
                        context,
                      ).textTheme.bodyMedium?.copyWith(color: Colors.black),
                      onChanged: viewModel.setTempName,
                    ),
                  ),
                  const Gap(12),
                  SizedBox(
                    height: 70,
                    width: double.infinity,
                    child: FormInput(
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return LocaleKeys.onboarding_q6_age_required.tr();
                        }
                        return null;
                      },
                      style: Theme.of(
                        context,
                      ).textTheme.bodyMedium?.copyWith(color: Colors.black),
                      minLines: null,
                      expands: true,
                      controller: viewModel.tempAgeController,
                      labelText: LocaleKeys.onboarding_q6_age_placeholder.tr(),
                      autoValidate: false,
                      labelStyle: Theme.of(
                        context,
                      ).textTheme.bodyMedium?.copyWith(color: Colors.black),
                      onChanged: viewModel.setTempAge,
                    ),
                  ),
                ],
              ),
            ),
            const Gap(24),
            if (ref.watch(firstQuizzViewModelProvider).showBtn)
              ContinueButtonCard(
                onTap: viewModel.validateAgeAndSurname,
                title: LocaleKeys.continueBtn.tr(),
              ),
          ],
        ),
      ),
    );
  }
}
