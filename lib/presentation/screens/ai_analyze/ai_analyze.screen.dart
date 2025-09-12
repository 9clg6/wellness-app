import 'package:animate_gradient/animate_gradient.dart';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:starter_kit/core/localization/generated/locale_keys.g.dart';
import 'package:starter_kit/presentation/screens/ai_analyze/ai_analyze.state.dart';
import 'package:starter_kit/presentation/screens/ai_analyze/ai_analyze.view_model.dart';
import 'package:starter_kit/presentation/widgets/custom_loader.dart';
import 'package:starter_kit/presentation/widgets/error_placeholder.dart';
import 'package:starter_kit/presentation/widgets/text_variant.dart';

/// Ai analyze screen
@RoutePage()
class AiAnalyzeScreen extends ConsumerWidget {
  /// Constructor
  const AiAnalyzeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final AsyncValue<AiAnalyzeState> state = ref.watch(aiAnalyzeProvider);

    return Scaffold(
      body: AnimateGradient(
        primaryEnd: Alignment.bottomLeft,
        secondaryBegin: Alignment.topRight,
        primaryColors: <Color>[
          colorScheme.secondary,
          colorScheme.tertiary,
          colorScheme.primary,
        ],
        secondaryColors: <Color>[
          colorScheme.primary,
          colorScheme.secondary,
          colorScheme.tertiary,
        ],
        duration: const Duration(seconds: 1),
        child: state.when(
          data: (AiAnalyzeState data) => Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 16),
              child: ListView(
                children: <Widget>[
                  Center(
                    child: Column(
                      children: <Widget>[
                        TextVariant(
                          data.report.positiveElements.join(', '),
                          variantType: TextVariantType.titleSmall,
                        ),
                        const Gap(16),
                        TextVariant(
                          data.report.improvementAxes.join(', '),
                          variantType: TextVariantType.titleSmall,
                        ),
                        const Gap(16),
                        TextVariant(
                          data.report.progressAnalysis,
                          variantType: TextVariantType.titleSmall,
                        ),
                        const Gap(16),
                        TextVariant(
                          data.report.tendance,
                          variantType: TextVariantType.titleSmall,
                        ),
                        const Gap(16),
                        TextVariant(
                          data.report.conclusion,
                          variantType: TextVariantType.titleSmall,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          error: ErrorPlaceholder.new,
          loading: () => Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextVariant(LocaleKeys.aiAnalyze_loading.tr()),
                const Gap(16),
                const CustomLoader(size: 22),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
