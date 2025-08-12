import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:mesh_gradient/mesh_gradient.dart';
import 'package:starter_kit/core/extensions/string.extension.dart';
import 'package:starter_kit/presentation/screens/real_home/real_home.view_model.dart';

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
    final RealHomeViewModel viewModel = ref.watch(
      realHomeViewModelProvider.notifier,
    );

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
                  'Bonjour,',
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
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 28),
              child: ListView(
                children: <Widget>[
                  Builder(
                    builder: (BuildContext context) {
                      final DateTime today = DateTime.now();
                      final int weekDay = today.weekday;
                      final DateTime firstDayOfWeek = today.subtract(
                        Duration(days: weekDay),
                      );

                      return Container(
                        padding: const EdgeInsets.symmetric(vertical: 4),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.white,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: List<Widget>.generate(7, (int index) {
                            final bool isThisDayCurrent = index == weekDay;
                            final DateTime currentDay = firstDayOfWeek.add(
                              Duration(days: index),
                            );
                            final bool isSomethingHappened = viewModel
                                .isSomethingHappenedThisDay(date: currentDay);

                            return Padding(
                              padding: const EdgeInsets.symmetric(vertical: 4),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  if (isSomethingHappened)
                                    const Icon(
                                      Icons.local_fire_department_rounded,
                                      color: Colors.green,
                                    ),
                                  const Gap(2),
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 12,
                                      vertical: 12,
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16),
                                      color: isThisDayCurrent
                                          ? Colors.black
                                          : Colors.white,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: <Widget>[
                                        Text(
                                          DateFormat(
                                            'EEE',
                                          ).format(currentDay).capitalize,
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
                  ),
                  const Gap(16),
                  IntrinsicHeight(
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(color: Colors.black.withAlpha(20)),
                        color: Colors.white,
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                            color: Colors.black.withAlpha(50),
                            blurRadius: 10,
                            spreadRadius: 1,
                          ),
                        ],
                      ),
                      child: Column(
                        children: <Widget>[
                          Text(
                            'Rends ta journée plus belle ☀️',
                            style: textTheme.bodyMedium?.copyWith(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const Gap(4),
                          Text(
                            "Notes 3 choses qui t'ont marquées aujourd'hui",
                            style: textTheme.bodyMedium?.copyWith(
                              fontSize: 14,
                              color: Colors.black.withAlpha(100),
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
