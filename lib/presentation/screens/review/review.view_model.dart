import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';
import 'package:welly/core/localization/generated/locale_keys.g.dart';
import 'package:welly/core/providers/core/services/happen_action.service.provider.dart';
import 'package:welly/core/providers/core/services/navigation.service.provider.dart';
import 'package:welly/core/providers/core/services/user.service.provider.dart';
import 'package:welly/core/providers/foundation/services/happen_action.service.dart';
import 'package:welly/core/providers/foundation/services/navigation.service.dart';
import 'package:welly/core/providers/foundation/services/user.service.dart';
import 'package:welly/core/providers/presentation/router.provider.dart';
import 'package:welly/domain/entities/happen_action.entity.dart';
import 'package:welly/presentation/screens/review/review.state.dart';

part 'review.view_model.g.dart';

/// Review view model
@riverpod
class ReviewViewModel extends _$ReviewViewModel {
  /// Happen action service
  late final HappenActionService _happenActionService;

  late final NavigationService _navigationService;

  /// User service
  late final UserService _userService;

  /// Overlay state
  late final OverlayState overlay;

  /// Snackbar controller
  AnimationController? _snackController;

  @override
  Future<ReviewState> build() async {
    debugPrint('[ReviewViewModel] build');
    _happenActionService = await ref.watch(happenActionServiceProvider.future);
    _navigationService = ref.watch(navigationServiceProvider);
    _userService = await ref.watch(userServiceProvider.future);

    final List<HappenActionEntity> entries = _happenActionService.todayEntry;

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

    return ReviewState.initial(
      streakDays: _userService.streakDays,
      entries: entries,
    );
  }

  /// Leave review
  void leaveReview() {
    _closeSnackBar();
    _userService.increaseStreakDays();
    _navigationService.pop(result: true);
  }

  /// Close snackbar
  void _closeSnackBar() {
    _snackController?.reverse();
  }

  /// Dispose resources
  void dispose() {
    _closeSnackBar();
    _snackController?.dispose();
  }
}
