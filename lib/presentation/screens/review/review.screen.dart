import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mesh_gradient/mesh_gradient.dart';
import 'package:starter_kit/core/localization/generated/locale_keys.g.dart';
import 'package:starter_kit/domain/entities/happen_action.entity.dart';
import 'package:starter_kit/presentation/screens/review/review.state.dart';
import 'package:starter_kit/presentation/screens/review/review.view_model.dart';
import 'package:starter_kit/presentation/screens/review/widgets/arc_wheel_view.dart';

/// Review screen
@RoutePage()
class ReviewScreen extends ConsumerStatefulWidget {
  /// Constructor
  const ReviewScreen({super.key});

  @override
  ConsumerState<ReviewScreen> createState() => _ReviewScreenState();
}

class _ReviewScreenState extends ConsumerState<ReviewScreen>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    final ReviewState state = ref.watch(reviewViewModelProvider);

    final List<HappenActionEntity> entries = state.entries;

    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(LocaleKeys.reviewScreenTitle.tr()),
        foregroundColor: Colors.black,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
      ),
      body: Stack(
        children: <Widget>[
          Positioned.fill(
            child: Opacity(
              opacity: 0.5,
              child: MeshGradient(
                options: MeshGradientOptions(noiseIntensity: 1),
                controller: MeshGradientController(
                  points: <MeshGradientPoint>[
                    MeshGradientPoint(
                      position: const Offset(0.3, 0.3),
                      color: Colors.white,
                    ),
                    MeshGradientPoint(
                      position: const Offset(0.4, 0.5),
                      color: Colors.green,
                    ),
                    MeshGradientPoint(
                      position: const Offset(0.7, 0.4),
                      color: Colors.blue,
                    ),
                    MeshGradientPoint(
                      position: const Offset(0.7, 0.9),
                      color: Colors.red,
                    ),
                  ],
                  vsync: this,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: entries.isEmpty
                ? Center(
                    child: Text(
                      LocaleKeys.reviewScreenNoEntries.tr(),
                      style: const TextStyle(fontSize: 16),
                    ),
                  )
                : Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Expanded(child: ReviewArcWheel(entries: entries)),
                      ],
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}
