import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:starter_kit/core/extensions/string.extension.dart';
import 'package:starter_kit/core/localization/generated/locale_keys.g.dart';
import 'package:starter_kit/presentation/screens/real_home/real_home.state.dart';
import 'package:starter_kit/presentation/screens/real_home/real_home.view_model.dart';
import 'package:starter_kit/presentation/widgets/custom_loader.dart';
import 'package:starter_kit/presentation/widgets/gradient_background.dart';
import 'package:starter_kit/presentation/widgets/tappable_componenent.dart';
import 'package:starter_kit/presentation/widgets/text_variant.dart';

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
      error: (Object error, StackTrace stackTrace) => const SizedBox.shrink(),
      loading: () => const SizedBox.shrink(),
    );
  }
}

class _HasDataBodyState extends ConsumerState<_HasDataBody>
    with SingleTickerProviderStateMixin {
  RealHomeState get state => widget.state;

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final AsyncValue<RealHomeState> state = ref.watch(
      realHomeViewModelProvider,
    );

    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      appBar: _HomeAppBar(),
      body: state.when(
        data: (RealHomeState data) => GradientBackground(
          opacity: 0.3,
          randomGradient: true,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, top: 28),
              child: ListView(
                children: <Widget>[
                  _BigContainerStreak(),
                  const Gap(16),
                  _RowContainerStreak(),
                  _MainActionBtn(),
                ],
              ),
            ),
          ),
        ),
        error: (Object error, StackTrace stackTrace) => Center(
          child: TextVariant('Error: $error', color: colorScheme.error),
        ),
        loading: CustomLoader.new,
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

    return state.when(
      data: (RealHomeState state) => AppBar(
        toolbarHeight: _height,
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        elevation: 0,
        surfaceTintColor: Colors.transparent,
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.settings_outlined, color: Colors.black),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_outlined, color: Colors.black),
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
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final RealHomeViewModel viewModel = ref.watch(
      realHomeViewModelProvider.notifier,
    );
    final ColorScheme colorScheme = Theme.of(context).colorScheme;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 32),
      child: IntrinsicHeight(
        child: TappableComponent(
          color: colorScheme.primary,
          splashColor: colorScheme.onPrimary.withAlpha(30),
          onTap: viewModel.onTapAddHappenAction,
          borderRadius: BorderRadius.circular(24),
          child: Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: colorScheme.outline.withValues(alpha: 0.2),
              borderRadius: BorderRadius.circular(24),
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: colorScheme.onPrimary.withAlpha(80),
                  blurRadius: 10,
                  spreadRadius: 1,
                  blurStyle: BlurStyle.inner,
                ),
              ],
              gradient: LinearGradient(
                colors: <Color>[
                  colorScheme.onPrimary.withAlpha(10),
                  colorScheme.onPrimary.withAlpha(20),
                  colorScheme.onPrimary.withAlpha(90),
                ],
              ),
            ),
            child: Column(
              children: <Widget>[
                TextVariant(
                  LocaleKeys.reviewScreenTitle3.tr(),
                  variantType: TextVariantType.bodyLarge,
                  fontWeight: FontWeight.bold,
                  color: colorScheme.onPrimary,
                ),
                TextVariant(
                  LocaleKeys.reviewScreenTitle4.tr(),
                  color: colorScheme.onPrimary,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _RowContainerStreak extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final RealHomeViewModel viewModel = ref.watch(
      realHomeViewModelProvider.notifier,
    );
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    return Builder(
      builder: (BuildContext context) {
        final DateTime today = DateTime.now();
        final int weekDay = today.weekday;
        final DateTime firstDayOfWeek = today.subtract(Duration(days: weekDay));

        return Container(
          padding: const EdgeInsets.symmetric(vertical: 4),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: colorScheme.surface,
            border: Border.all(
              color: colorScheme.outline.withValues(alpha: 0.2),
            ),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List<Widget>.generate(7, (int index) {
              final bool isThisDayCurrent = index == weekDay;
              final DateTime currentDay = firstDayOfWeek.add(
                Duration(days: index),
              );
              final bool isSomethingHappened = viewModel
                  .isSomethingHappenedThisDay(date: currentDay);
              final bool isInStreak = viewModel.isThisDayInStreak(
                date: currentDay,
              );

              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: Column(
                  mainAxisSize: MainAxisSize.min,

                  children: <Widget>[
                    if (viewModel.isThisDayInStreak(date: currentDay))
                      const Icon(
                        Icons.local_fire_department_rounded,
                        color: Colors.red,
                        size: 22,
                      )
                    else if (isSomethingHappened)
                      const Icon(Icons.check, color: Colors.green, size: 22)
                    else if (isThisDayCurrent &&
                        !isSomethingHappened &&
                        !isInStreak)
                      const TextVariant(
                        '😭',
                        variantType: TextVariantType.titleLarge,
                      ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 12,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: isThisDayCurrent
                            ? colorScheme.onSurface
                            : colorScheme.onPrimary,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          TextVariant(
                            DateFormat('EEE').format(currentDay).capitalize,
                            color: isThisDayCurrent
                                ? colorScheme.onPrimary
                                : colorScheme.onSurface,
                          ),
                          TextVariant(
                            firstDayOfWeek
                                .add(Duration(days: index))
                                .day
                                .toString(),
                            color: isThisDayCurrent
                                ? colorScheme.onPrimary
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

class _BigContainerStreak extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final RealHomeViewModel viewModel = ref.watch(
      realHomeViewModelProvider.notifier,
    );
    final ColorScheme colorScheme = Theme.of(context).colorScheme;

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: colorScheme.surface,
        border: Border.all(color: colorScheme.outline.withValues(alpha: 0.3)),
      ),
      child: Column(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 6),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(22),
              color: colorScheme.surfaceContainer,
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
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: colorScheme.surfaceContainerHigh,
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: colorScheme.outline.withValues(alpha: 0.1),
                      ),
                    ),
                    child:  const Icon(
                      Icons.local_fire_department_sharp,
                      color: Colors.red,
                      size: 42,
                    ),
                  ),
                ),
                TextVariant(
                  LocaleKeys.reviewScreenStreak.tr(
                    args: <String>[viewModel.streakDays.toString()],
                  ),
                  variantType: TextVariantType.bodyLarge,
                  fontWeight: FontWeight.w500,
                  color: colorScheme.onSurface,
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
        ],
      ),
    );
  }
}
