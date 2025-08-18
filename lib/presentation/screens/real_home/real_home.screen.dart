import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:mesh_gradient/mesh_gradient.dart';
import 'package:starter_kit/core/extensions/string.extension.dart';
import 'package:starter_kit/core/localization/generated/locale_keys.g.dart';
import 'package:starter_kit/presentation/screens/real_home/real_home.view_model.dart';
import 'package:starter_kit/presentation/widgets/tappable_componenent.dart';

/// Real home screen
@RoutePage()
class RealHomeScreen extends ConsumerStatefulWidget {
  /// Constructor
  const RealHomeScreen({super.key});

  @override
  ConsumerState<RealHomeScreen> createState() => _RealHomeScreenState();
}

/// Real home screen state
class _RealHomeScreenState extends ConsumerState<RealHomeScreen>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        toolbarHeight: 100,
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
                Text(
                  LocaleKeys.hello.tr(),
                  style: textTheme.bodyMedium?.copyWith(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
                Text(
                  'Clément 👋',
                  style: textTheme.titleLarge?.copyWith(
                    fontSize: 32,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
        automaticallyImplyLeading: false,
      ),
      body: Stack(
        children: <Widget>[
          Positioned.fill(
            child: Opacity(
              opacity: 0.2,
              child: MeshGradient(
                options: MeshGradientOptions(noiseIntensity: 1),
                controller: MeshGradientController(
                  points: <MeshGradientPoint>[
                    MeshGradientPoint(
                      position: const Offset(0.3, 0.2),
                      color: Colors.red,
                    ),
                    MeshGradientPoint(
                      position: const Offset(0.2, 0.8),
                      color: Colors.purple,
                    ),
                    MeshGradientPoint(
                      position: const Offset(0.7, 0.4),
                      color: Colors.pink,
                    ),
                    MeshGradientPoint(
                      position: const Offset(0.7, 0.9),
                      color: Colors.orange,
                    ),
                  ],
                  vsync: this,
                ),
              ),
            ),
          ),
          Center(
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
        ],
      ),
    );
  }
}

class _MainActionBtn extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final RealHomeViewModel viewModel = ref.watch(
      realHomeViewModelProvider.notifier,
    );
    final TextTheme textTheme = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 32),
      child: IntrinsicHeight(
        child: TappableComponent(
          color: Colors.pink[300]!,
          splashColor: Colors.white.withAlpha(30),
          onTap: viewModel.onTapAddHappenAction,
          borderRadius: BorderRadius.circular(24),
          child: Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black.withAlpha(10)),
              borderRadius: BorderRadius.circular(24),
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Colors.white.withAlpha(80),
                  blurRadius: 10,
                  spreadRadius: 1,
                  blurStyle: BlurStyle.inner,
                ),
              ],
              gradient: LinearGradient(
                colors: <Color>[
                  Colors.white.withAlpha(20),
                  Colors.white.withAlpha(40),
                  Colors.white.withAlpha(100),
                ],
              ),
            ),
            child: Column(
              children: <Widget>[
                Text(
                  LocaleKeys.reviewScreenTitle3.tr(),
                  style: textTheme.bodyMedium?.copyWith(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  LocaleKeys.reviewScreenTitle4.tr(),
                  style: textTheme.bodyMedium?.copyWith(
                    fontSize: 14,
                    color: Colors.white.withAlpha(200),
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
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

    return Builder(
      builder: (BuildContext context) {
        final DateTime today = DateTime.now();
        final int weekDay = today.weekday;
        final DateTime firstDayOfWeek = today.subtract(Duration(days: weekDay));

        return Container(
          padding: const EdgeInsets.symmetric(vertical: 4),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.white,
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
                      const Text('😭', style: TextStyle(fontSize: 18)),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 12,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: isThisDayCurrent ? Colors.black : Colors.white,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Text(
                            DateFormat('EEE').format(currentDay).capitalize,
                            style: TextStyle(
                              color: isThisDayCurrent
                                  ? Colors.white
                                  : Colors.black,
                              fontSize: 12,
                            ),
                          ),
                          Text(
                            firstDayOfWeek
                                .add(Duration(days: index))
                                .day
                                .toString(),
                            style: TextStyle(
                              color: isThisDayCurrent
                                  ? Colors.white
                                  : Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
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
    final TextTheme textTheme = Theme.of(context).textTheme;

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white70,
        border: Border.all(color: Colors.black.withAlpha(20)),
      ),
      child: Column(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 6),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(22),
              color: Colors.white,
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Colors.black.withAlpha(20),
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
                    decoration: const BoxDecoration(
                      color: Colors.white70,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.local_fire_department_sharp,
                      color: Colors.red,
                      size: 42,
                    ),
                  ),
                ),
                Text(
                  LocaleKeys.reviewScreenStreak.tr(
                    args: <String>[viewModel.streakDays.toString()],
                  ),
                  style: textTheme.bodyMedium?.copyWith(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
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
              child: Text(
                viewModel.buildStreakMessage(),
                style: textTheme.bodyMedium?.copyWith(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
