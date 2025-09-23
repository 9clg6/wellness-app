import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:welly/core/localization/generated/locale_keys.g.dart';
import 'package:welly/presentation/screens/review/review.state.dart';
import 'package:welly/presentation/screens/review/review.view_model.dart';
import 'package:welly/presentation/widgets/arc_wheel_view.dart';
import 'package:welly/presentation/widgets/custom_button.dart';
import 'package:welly/presentation/widgets/custom_loader.dart';
import 'package:welly/presentation/widgets/error_placeholder.dart';
import 'package:welly/presentation/widgets/gradient_background.dart';

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
    final AsyncValue<ReviewState> state = ref.watch(reviewViewModelProvider);

    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      body: state.when(
        data: (ReviewState data) => _HasDataBody(),
        error: ErrorPlaceholder.new,
        loading: CustomLoader.new,
      ),
    );
  }

  @override
  void dispose() {
    ref.read(reviewViewModelProvider.notifier).dispose();
    super.dispose();
  }
}

class _HasDataBody extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ReviewViewModel viewModel = ref.watch(
      reviewViewModelProvider.notifier,
    );
    final AsyncValue<ReviewState> state = ref.watch(reviewViewModelProvider);

    return GradientBackground(
      stackKey: GlobalKey(),
      randomGradient: true,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: state.requireValue.entries.isEmpty
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
                    SizedBox(
                      height: 200,
                      child: ReviewArcWheel(
                        entries: state.requireValue.entries,
                      ),
                    ),
                    const Gap(22),
                    SizedBox(
                      width: 160,
                      child: CustomButton(
                        title: LocaleKeys.review_leave_review.tr(),
                        backgroundColor: Colors.black,
                        onTap: viewModel.leaveReview,
                        boldTitle: true,
                      ),
                    ),
                  ],
                ),
              ),
      ),
    );
  }
}
