import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:starter_kit/core/localization/generated/locale_keys.g.dart';
import 'package:starter_kit/presentation/on_boarding/on_boarding.view_model.dart';
import 'package:starter_kit/presentation/widgets/continue_button_card.dart';
import 'package:starter_kit/presentation/widgets/text_variant.dart';

/// Étape d'éducation (bénéfices)
class EducationStep extends ConsumerStatefulWidget {
  /// Constructor
  const EducationStep({super.key});

  @override
  ConsumerState<EducationStep> createState() => _EducationStepState();
}

class _EducationStepState extends ConsumerState<EducationStep> {
  final PageController _controller = PageController();
  int _index = 0;

  late final List<Map<String, String>> _screens = <Map<String, String>>[
    <String, String>{
      'title': LocaleKeys.onboarding_education_screen1_title.tr(),
      'text': LocaleKeys.onboarding_education_screen1_text.tr(),
      'visual': LocaleKeys.onboarding_education_screen1_visual.tr(),
    },
    <String, String>{
      'title': LocaleKeys.onboarding_education_screen2_title.tr(),
      'text': LocaleKeys.onboarding_education_screen2_text.tr(),
      'visual': LocaleKeys.onboarding_education_screen2_visual.tr(),
    },
    <String, String>{
      'title': LocaleKeys.onboarding_education_screen3_title.tr(),
      'text': LocaleKeys.onboarding_education_screen3_text.tr(),
      'visual': LocaleKeys.onboarding_education_screen3_visual.tr(),
    },
    <String, String>{
      'title': LocaleKeys.onboarding_education_screen4_title.tr(),
      'text': LocaleKeys.onboarding_education_screen4_text.tr(),
      'visual': LocaleKeys.onboarding_education_screen4_visual.tr(),
    },
    <String, String>{
      'title': LocaleKeys.onboarding_education_screen5_title.tr(),
      'text': LocaleKeys.onboarding_education_screen5_text.tr(),
      'visual': LocaleKeys.onboarding_education_screen5_visual.tr(),
    },
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
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 42),
      child: Column(
        children: <Widget>[
          Expanded(
            child: PageView(
              controller: _controller,
              physics: const NeverScrollableScrollPhysics(),
              children: _screens
                  .map(
                    (Map<String, String> screen) => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          // Visuel
                          TextVariant(screen['visual']!, fontSize: 80),
                          const SizedBox(height: 12),
                          TextVariant(
                            screen['title']!,
                            textAlign: TextAlign.center,
                            variantType: TextVariantType.titleLarge,
                          ),
                          const SizedBox(height: 24),
                          TextVariant(
                            screen['text']!,
                            textAlign: TextAlign.center,
                            variantType: TextVariantType.bodyLarge,
                          ),
                        ],
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
              color: colorScheme.primary,
              title: _index == _screens.length - 1
                  ? LocaleKeys.onboarding_education_button.tr()
                  : LocaleKeys.common_next.tr(),
            ),
          ),
        ],
      ),
    );
  }
}
