import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:starter_kit/core/localization/generated/locale_keys.g.dart';
import 'package:starter_kit/core/providers/core/services/happen_action.service.provider.dart';
import 'package:starter_kit/core/providers/core/services/navigation.service.provider.dart';
import 'package:starter_kit/core/providers/foundation/services/happen_action.service.dart';
import 'package:starter_kit/core/providers/foundation/services/navigation.service.dart';
import 'package:starter_kit/core/providers/presentation/router.provider.dart';
import 'package:starter_kit/domain/entities/happen_action.entity.dart';
import 'package:starter_kit/presentation/screens/review/review.state.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

part 'review.view_model.g.dart';

/// Review view model
@riverpod
class ReviewViewModel extends _$ReviewViewModel {
  /// Happen action service
  late final HappenActionService _service;

  late final NavigationService _navigationService;

  /// Overlay state
  late final OverlayState overlay;

  /// Controller interne du TopSnackBar pour pouvoir le fermer
  AnimationController? _snackController;

  @override
  ReviewState build() {
    _service = ref.watch(happenActionServiceProvider);
    _navigationService = ref.watch(navigationServiceProvider);

    final List<HappenActionEntity> entries = List<HappenActionEntity>.from(
      _service.entries,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) {
      final BuildContext? context = ref
          .watch(routerProvider)
          .navigatorKey
          .currentContext;
      if (context == null) return;
      overlay = Overlay.of(context, rootOverlay: true);

      showTopSnackBar(
        overlay,
        animationDuration: const Duration(milliseconds: 1000),
        persistent: true,
        onAnimationControllerInit: (AnimationController controller) {
          _snackController = controller;
        },
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(22),
            color: Colors.white,
            border: Border.all(color: Colors.black.withAlpha(10)),
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.15),
                blurRadius: 16,
                spreadRadius: 1,
              ),
            ],
          ),
          child: Center(
            child: Text(
              LocaleKeys.reviewScreenTitle2.tr(),
              style: const TextStyle(
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.w400,
                decoration: TextDecoration.none,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      );
    });

    return ReviewState(
      isLoading: false,
      streakDays: _service.streakDays,
      entries: entries,
    );
  }

  /// Refresh data from the home view model
  void refreshFromHome() {
    final HappenActionService service = ref.read(happenActionServiceProvider);
    state = state.copyWith(
      isLoading: false,
      streakDays: service.streakDays,
      entries: List<HappenActionEntity>.from(service.entries),
    );
  }

  /// Leave review
  void leaveReview() {
    _snackController?.reverse();
    _service.incrementStreak();
    _navigationService.navigateToRealHome(replace: true);
  }
}
