import 'package:animate_gradient/animate_gradient.dart';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:welly/core/extensions/date.extension.dart';
import 'package:welly/core/extensions/string.extension.dart';
import 'package:welly/core/localization/generated/locale_keys.g.dart';
import 'package:welly/presentation/screens/real_home/real_home.state.dart';
import 'package:welly/presentation/screens/real_home/real_home.view_model.dart';
import 'package:welly/presentation/widgets/custom_loader.dart';
import 'package:welly/presentation/widgets/error_placeholder.dart';
import 'package:welly/presentation/widgets/gradient_background.dart';
import 'package:welly/presentation/widgets/tappable_componenent.dart';
import 'package:welly/presentation/widgets/text_variant.dart';

/// Real home screen
@RoutePage()
class RealHomeScreen extends ConsumerStatefulWidget {
  /// Constructor
  const RealHomeScreen({super.key});

  @override
  ConsumerState<RealHomeScreen> createState() => _RealHomeScreenState();
}

/// Real home screen state
class _RealHomeScreenState extends ConsumerState<RealHomeScreen> {
  @override
  Widget build(BuildContext context) {
    final AsyncValue<RealHomeState> state = ref.watch(
      realHomeViewModelProvider,
    );
    return state.when(
      data: _HasDataBody.new,
      error: (Object error, StackTrace stackTrace) => Center(
        child: TextVariant(
          error.toString(),
          color: Theme.of(context).colorScheme.error,
        ),
      ),
      loading: CustomLoader.new,
    );
  }
}

class _HasDataBodyState extends ConsumerState<_HasDataBody>
    with SingleTickerProviderStateMixin {
  RealHomeState get state => widget.state;

  @override
  Widget build(BuildContext context) {
    final AsyncValue<RealHomeState> state = ref.watch(
      realHomeViewModelProvider,
    );

    return Scaffold(
      backgroundColor: Colors.transparent,
      extendBodyBehindAppBar: true,
      appBar: _HomeAppBar(),
      body: state.when(
        data: (RealHomeState data) => GradientBackground(
          opacity: 0.2,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: ListView(
                children: <Widget>[
                  ...<Widget>[
                    _MainActionBtn(
                      isTodayEventsFilled: data.isTodayEventsFilled,
                    ),
                  ],
                  const _AnalyzeWithAiBtn(),
                  const Gap(24),
                  _BigContainerStreak(),
                  const Gap(16),
                  _RowContainerStreak(),
                  const Gap(16),
                  const _ReviewOldEventsBtn(),
                ],
              ),
            ),
          ),
        ),
        error: ErrorPlaceholder.new,
        loading: CustomLoader.new,
      ),
    );
  }
}

class _ReviewOldEventsBtn extends ConsumerWidget {
  const _ReviewOldEventsBtn();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final RealHomeViewModel viewModel = ref.watch(
      realHomeViewModelProvider.notifier,
    );

    return TappableComponent(
      color: Colors.transparent,
      splashColor: colorScheme.onPrimary.withAlpha(30),
      onTap: viewModel.onTapReviewOldEvents,
      borderRadius: BorderRadius.circular(24),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(24),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: colorScheme.primary),
            borderRadius: BorderRadius.circular(24),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 8),
          child: Row(
            children: <Widget>[
              Icon(Icons.history, size: 26, color: colorScheme.onPrimary),
              const Gap(28),
              Flexible(
                child: TextVariant(
                  LocaleKeys.reviewScreenReviewOldEvents.tr(),
                  variantType: TextVariantType.titleMedium,
                  fontSize: 16,
                  color: colorScheme.onPrimary,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _AnalyzeWithAiBtn extends ConsumerWidget {
  const _AnalyzeWithAiBtn();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final RealHomeViewModel viewModel = ref.watch(
      realHomeViewModelProvider.notifier,
    );
    final RealHomeState state = ref
        .watch(realHomeViewModelProvider)
        .requireValue;
    final ColorScheme colorScheme = Theme.of(context).colorScheme;

    return TappableComponent(
      color: Colors.transparent,
      splashColor: colorScheme.onPrimary.withAlpha(30),
      onTap: viewModel.onTapAnalyzeWithAi,
      borderRadius: BorderRadius.circular(24),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(24),
        child: AnimateGradient(
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
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: colorScheme.secondary, width: 2),
              borderRadius: BorderRadius.circular(24),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 8),
            child: Row(
              children: <Widget>[
                const Icon(Icons.auto_awesome, size: 26),
                const Gap(28),
                Flexible(
                  child: TextVariant(
                    state.doesReportExist
                        ? LocaleKeys.aiAnalyze_seeReport.tr()
                        : LocaleKeys.reviewScreenAnalyzeWithAi.tr(),
                    variantType: TextVariantType.titleMedium,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _HomeAppBar extends ConsumerWidget implements PreferredSizeWidget {
  static const double _height = 100;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<RealHomeState> state = ref.watch(
      realHomeViewModelProvider,
    );
    final RealHomeViewModel viewModel = ref.watch(
      realHomeViewModelProvider.notifier,
    );

    return state.when(
      data: (RealHomeState state) => AppBar(
        toolbarHeight: _height,
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        elevation: 0,
        surfaceTintColor: Colors.transparent,
        actions: <Widget>[
          IconButton(
            onPressed: viewModel.onTapSettings,
            icon: const Icon(Icons.settings_outlined, color: Colors.black),
          ),
        ],
        title: Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                TextVariant(LocaleKeys.hello.tr()),
                TextVariant(
                  '${state.surname} 👋',
                  variantType: TextVariantType.headlineMedium,
                  fontWeight: FontWeight.bold,
                ),
              ],
            ),
          ),
        ),
        automaticallyImplyLeading: false,
      ),
      error: (Object error, StackTrace stackTrace) => const SizedBox.shrink(),
      loading: () => const SizedBox.shrink(),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(_height);
}

class _HasDataBody extends ConsumerStatefulWidget {
  const _HasDataBody(this.state);

  final RealHomeState state;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HasDataBodyState();
}

class _MainActionBtn extends ConsumerWidget {
  const _MainActionBtn({required this.isTodayEventsFilled});

  final bool isTodayEventsFilled;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final RealHomeViewModel viewModel = ref.watch(
      realHomeViewModelProvider.notifier,
    );
    final ColorScheme colorScheme = Theme.of(context).colorScheme;

    return Animate(
      delay: Duration.zero,
      effects: const <Effect<dynamic>>[
        FadeEffect(duration: Duration(milliseconds: 250)),
        SlideEffect(begin: Offset(0, -0.1), delay: Duration(milliseconds: 250)),
      ],
      child: TappableComponent(
        color: colorScheme.primary,
        splashColor: colorScheme.onPrimary.withAlpha(30),
        onTap: () => viewModel.onTapAddHappenAction(
          isTodayEventsFilled: isTodayEventsFilled,
        ),
        borderRadius: BorderRadius.circular(24),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: colorScheme.primary.withAlpha(100),
            blurRadius: 1,
            offset: const Offset(0, 5),
            spreadRadius: 1,
          ),
        ],
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            border: Border.all(color: colorScheme.onPrimary.withAlpha(20)),
          ),
          child: Column(
            children: <Widget>[
              TextVariant(
                isTodayEventsFilled
                    ? LocaleKeys.reviewScreenReviewTodayEvents.tr()
                    : LocaleKeys.reviewScreenTitle3.tr(),
                variantType: TextVariantType.bodyLarge,
                fontWeight: FontWeight.bold,
                color: colorScheme.onPrimary,
              ),
              TextVariant(
                isTodayEventsFilled
                    ? LocaleKeys.reviewScreenRepeatTodayEvents.tr()
                    : LocaleKeys.reviewScreenTitle4.tr(),
                color: colorScheme.onPrimary,
                textAlign: TextAlign.center,
                fontWeight: FontWeight.w300,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _RowContainerStreak extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;

    return Builder(
      builder: (BuildContext context) {
        final DateTime today = DateTime.now();
        final int weekDay = today.weekday;
        final DateTime firstDayOfWeek = today.subtract(Duration(days: weekDay));

        return Container(
          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 4),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: colorScheme.surface,
            border: Border.all(
              color: colorScheme.outline.withValues(alpha: 0.2),
            ),
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: colorScheme.onSurface.withAlpha(30),
                blurRadius: 10,
                spreadRadius: 1,
              ),
            ],
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List<Widget>.generate(7, (int index) {
              final bool isThisDayCurrent = index == weekDay;
              final DateTime currentDay = firstDayOfWeek
                  .add(Duration(days: index))
                  .dateWithoutTime;

              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    _StreakIcon(date: currentDay),
                    const Gap(4),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 12,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(
                          color: colorScheme.outline.withValues(alpha: 0.1),
                        ),
                        color: isThisDayCurrent
                            ? colorScheme.onSurface
                            : colorScheme.surfaceContainerLowest,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          TextVariant(
                            DateFormat('EEE').format(currentDay).capitalize,
                            color: isThisDayCurrent
                                ? Colors.white
                                : colorScheme.onSurface,
                          ),
                          TextVariant(
                            firstDayOfWeek
                                .add(Duration(days: index))
                                .day
                                .toString(),
                            color: isThisDayCurrent
                                ? Colors.white
                                : colorScheme.onSurface,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            }),
          ),
        );
      },
    );
  }
}

class _StreakIcon extends ConsumerWidget {
  const _StreakIcon({required this.date});
  final DateTime date;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final RealHomeViewModel viewModel = ref.watch(
      realHomeViewModelProvider.notifier,
    );
    final bool isTodaySet = viewModel.isSomethingHappenedThisDay(date: date);
    final bool isInStreak = viewModel.isThisDayInStreak(date: date);
    late Widget icon;

    if (isInStreak) {
      icon = const Icon(
        Icons.local_fire_department_rounded,
        color: Colors.red,
        size: 22,
      );
    } else if (isTodaySet) {
      icon = const Icon(Icons.check, color: Colors.green, size: 22);
    } else if (date == DateTime.now().dateWithoutTime &&
        !isTodaySet &&
        !isInStreak) {
      icon = const TextVariant('😭', variantType: TextVariantType.titleLarge);
    } else {
      icon = const SizedBox.shrink();
    }

    return icon;
  }
}

class _BigContainerStreak extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final RealHomeViewModel viewModel = ref.watch(
      realHomeViewModelProvider.notifier,
    );
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final int streakDays = viewModel.streakDays;
    final bool isStreakEmpty = streakDays == 0;

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: colorScheme.surface,
        border: Border.all(color: colorScheme.outline.withValues(alpha: 0.3)),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: colorScheme.onSurface.withAlpha(30),
            blurRadius: 10,
            spreadRadius: 1,
          ),
        ],
      ),
      child: Column(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 6),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(22),
              color: colorScheme.surfaceContainerLowest,
              border: Border.all(
                color: colorScheme.outline.withValues(alpha: 0.2),
              ),
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: colorScheme.onSurface.withAlpha(20),
                  blurRadius: 10,
                  spreadRadius: 1,
                ),
              ],
            ),
            child: Row(
              children: <Widget>[
                const Gap(8),
                if (!isStreakEmpty) ...<Widget>[
                  const Icon(
                    Icons.local_fire_department_sharp,
                    color: Colors.red,
                    size: 32,
                  ),
                  const Gap(8),
                ],
                Flexible(
                  child: TextVariant(
                    isStreakEmpty
                        ? LocaleKeys.reviewScreenStreakEmpty.tr()
                        : LocaleKeys.reviewScreenStreak.tr(
                            args: <String>[streakDays.toString()],
                          ),
                    variantType: TextVariantType.bodyLarge,
                    fontWeight: FontWeight.w500,
                    color: colorScheme.onSurface,
                  ),
                ),
              ],
            ),
          ),
          const Gap(12),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            child: Align(
              alignment: Alignment.centerLeft,
              child: TextVariant(
                viewModel.buildStreakMessage(),
                fontWeight: FontWeight.w300,
                color: colorScheme.onSurface,
              ),
            ),
          ),
          // Firebase test buttons (remove in production)
        ],
      ),
    );
  }
}
