import 'package:animate_gradient/animate_gradient.dart';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:starter_kit/core/extensions/string.extension.dart';
import 'package:starter_kit/core/localization/generated/locale_keys.g.dart';
import 'package:starter_kit/presentation/screens/ai_analyze/ai_analyze.state.dart';
import 'package:starter_kit/presentation/screens/ai_analyze/ai_analyze.view_model.dart';
import 'package:starter_kit/presentation/widgets/custom_app_bar.dart';
import 'package:starter_kit/presentation/widgets/custom_loader.dart';
import 'package:starter_kit/presentation/widgets/error_placeholder.dart';
import 'package:starter_kit/presentation/widgets/tappable_componenent.dart';
import 'package:starter_kit/presentation/widgets/text_variant.dart';

/// Ai analyze screen
@RoutePage()
class AiAnalyzeScreen extends ConsumerStatefulWidget {
  /// Constructor
  const AiAnalyzeScreen({super.key});

  @override
  ConsumerState<AiAnalyzeScreen> createState() => _AiAnalyzeScreenState();
}

class _AiAnalyzeScreenState extends ConsumerState<AiAnalyzeScreen>
    with TickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );
    _animationController.repeat();
  }

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final AsyncValue<AiAnalyzeState> state = ref.watch(aiAnalyzeProvider);

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: const CustomAppBar(),
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
        controller: _animationController,
        child: state.when(
          data: (AiAnalyzeState data) => Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 16),
              child: SingleChildScrollView(
                child: SafeArea(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Center(
                            child: TextVariant(
                              LocaleKeys.aiAnalyze_title.tr(),
                              variantType: TextVariantType.titleLarge,
                              textAlign: TextAlign.center,
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Gap(8),
                          Center(
                            child: TextVariant(
                              LocaleKeys.aiAnalyze_subtitle.tr(),
                              variantType: TextVariantType.titleMedium,
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                      const Gap(32),
                      Column(
                        children: <Widget>[
                          Center(
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                vertical: 12,
                                horizontal: 20,
                              ),
                              decoration: BoxDecoration(
                                color: colorScheme.surface,
                                border: Border.all(
                                  color: colorScheme.outline.withAlpha(70),
                                ),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  Column(
                                    children: <Widget>[
                                      TextVariant(
                                        LocaleKeys.aiAnalyze_humeurGenerale
                                            .tr(),
                                        variantType:
                                            TextVariantType.titleMedium,
                                      ),
                                      const Gap(8),
                                      Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Icon(
                                            Icons.sentiment_satisfied_outlined,
                                            color: colorScheme.onSurface,
                                            size: 32,
                                          ),
                                          const Gap(8),
                                          TextVariant(
                                            '7/10',
                                            variantType:
                                                TextVariantType.titleLarge,
                                            color: colorScheme.onSurface,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: <Widget>[
                                      TextVariant(
                                        LocaleKeys.aiAnalyze_categorieDominante
                                            .tr(),
                                        variantType:
                                            TextVariantType.titleMedium,
                                      ),
                                      const Gap(8),
                                      TextVariant(
                                        data
                                            .report
                                            .categorieDominante
                                            .nom
                                            .capitalize,
                                        variantType: TextVariantType.titleLarge,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Gap(24),
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 22,
                        ),
                        decoration: BoxDecoration(
                          color: colorScheme.surface,
                          border: Border.all(
                            color: colorScheme.outline.withAlpha(70),
                          ),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Container(
                                  padding: const EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    color: colorScheme.primary,
                                    border: Border.all(
                                      color: colorScheme.outline.withAlpha(70),
                                    ),
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                  child: Icon(
                                    Icons.analytics_outlined,
                                    color: colorScheme.onPrimary,
                                    size: 26,
                                  ),
                                ),
                                const Gap(16),
                                TextVariant(
                                  LocaleKeys.aiAnalyze_progressionSemaine.tr(),
                                  variantType: TextVariantType.titleLarge,
                                ),
                              ],
                            ),
                            Divider(
                              color: colorScheme.outline,
                              endIndent: 80,
                              height: 40,
                              thickness: 1,
                            ),
                            TextVariant(
                              data.report.analyseGlobale,
                              variantType: TextVariantType.titleSmall,
                              textAlign: TextAlign.justify,
                            ),
                          ],
                        ),
                      ),
                      const Gap(22),
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 22,
                        ),
                        decoration: BoxDecoration(
                          color: colorScheme.surface,
                          border: Border.all(
                            color: colorScheme.outline.withAlpha(70),
                          ),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                TextVariant(
                                  LocaleKeys.aiAnalyze_progressionSemaine.tr(),
                                  variantType: TextVariantType.titleLarge,
                                ),
                                const Gap(16),
                                Container(
                                  padding: const EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    color: colorScheme.primary,
                                    border: Border.all(
                                      color: colorScheme.outline.withAlpha(70),
                                    ),
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                  child: Icon(
                                    Icons.show_chart_outlined,
                                    color: colorScheme.onPrimary,
                                    size: 26,
                                  ),
                                ),
                              ],
                            ),
                            Divider(
                              color: colorScheme.outline,
                              indent: 80,
                              height: 40,
                              thickness: 1,
                            ),
                            TextVariant(
                              data.report.progressionSemaine,
                              variantType: TextVariantType.titleSmall,
                              textAlign: TextAlign.justify,
                            ),
                          ],
                        ),
                      ),
                      const Gap(22),
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 22,
                        ),
                        decoration: BoxDecoration(
                          color: colorScheme.surface,
                          border: Border.all(
                            color: colorScheme.outline.withAlpha(70),
                          ),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Container(
                                  padding: const EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    color: colorScheme.primary,
                                    border: Border.all(
                                      color: colorScheme.outline.withAlpha(70),
                                    ),
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                  child: Icon(
                                    Icons.emoji_events_outlined,
                                    color: colorScheme.onPrimary,
                                    size: 26,
                                  ),
                                ),
                                const Gap(16),
                                TextVariant(
                                  LocaleKeys.aiAnalyze_momentMarquant.tr(),
                                  variantType: TextVariantType.titleLarge,
                                ),
                              ],
                            ),
                            Divider(
                              color: colorScheme.outline,
                              endIndent: 80,
                              height: 40,
                              thickness: 1,
                            ),
                            TextVariant(
                              data.report.momentMarquant,
                              variantType: TextVariantType.titleSmall,
                              textAlign: TextAlign.justify,
                            ),
                          ],
                        ),
                      ),
                      const Gap(22),
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 22,
                        ),
                        decoration: BoxDecoration(
                          color: colorScheme.surface,
                          border: Border.all(
                            color: colorScheme.outline.withAlpha(70),
                          ),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                TextVariant(
                                  LocaleKeys.aiAnalyze_suggestions.tr(),
                                  variantType: TextVariantType.titleLarge,
                                ),
                                const Gap(16),
                                Container(
                                  padding: const EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    color: colorScheme.primary,
                                    border: Border.all(
                                      color: colorScheme.outline.withAlpha(70),
                                    ),
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                  child: Icon(
                                    Icons.lightbulb_outline,
                                    color: colorScheme.onPrimary,
                                    size: 26,
                                  ),
                                ),
                              ],
                            ),
                            Divider(
                              color: colorScheme.outline,
                              indent: 80,
                              height: 40,
                              thickness: 1,
                            ),
                            Column(
                              children: <Widget>[
                                for (final String suggestion
                                    in data.report.suggestions)
                                  TextVariant(
                                    suggestion,
                                    variantType: TextVariantType.titleSmall,
                                    textAlign: TextAlign.justify,
                                  ),
                              ],
                            ),
                          ],
                        ),
                      ),

                      const Gap(32),
                      TappableComponent(
                        onTap: () {
                          ref.watch(aiAnalyzeProvider.notifier).onTapQuit();
                        },
                        color: colorScheme.onSurface,
                        borderRadius: BorderRadius.circular(16),
                        splashColor: colorScheme.primary,
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                            color: colorScheme.onSurface.withAlpha(100),
                            blurRadius: 1,
                            offset: const Offset(0, 5),
                            spreadRadius: 1,
                          ),
                        ],
                        child: Container(
                          width: double.infinity,
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: TextVariant(
                            'Quitter',
                            variantType: TextVariantType.titleMedium,
                            textAlign: TextAlign.center,
                            color: colorScheme.surface,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
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
