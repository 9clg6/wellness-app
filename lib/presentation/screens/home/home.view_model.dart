import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:starter_kit/core/localization/generated/locale_keys.g.dart';
import 'package:starter_kit/core/providers/core/services/happen_action.service.provider.dart';
import 'package:starter_kit/core/providers/core/services/navigation.service.provider.dart';
import 'package:starter_kit/core/providers/foundation/services/navigation.service.dart';
import 'package:starter_kit/core/providers/presentation/router.provider.dart';
import 'package:starter_kit/core/utils/debouncer.util.dart';
import 'package:starter_kit/presentation/screens/home/home.state.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

part 'home.view_model.g.dart';

/// Home view model
@riverpod
class HomeViewModel extends _$HomeViewModel {
  /// Total steps to complete a day
  static const int totalSteps = 3;

  /// page controller
  final TextEditingController happenController = TextEditingController();

  late final NavigationService _navigationService;

  /// Because controller
  final TextEditingController becauseController = TextEditingController();

  /// Debouncer
  final Debouncer _debouncer = Debouncer(milliseconds: 500);

  /// Second field controller
  late final AnimationController secondFieldController;

  /// Second field fade
  late final Animation<double> secondFieldFade;

  /// Second field slide
  late final Animation<Offset> secondFieldSlide;

  /// Stack key
  final GlobalKey stackKey = GlobalKey();

  /// Flower key
  final GlobalKey flowerKey = GlobalKey();

  // TODO(clement): persistence
  /// Streak days (simple placeholder without persistence)
  int streakDays = 1;

  @override
  HomeState build() {
    _navigationService = ref.watch(navigationServiceProvider);

    listenSelf((HomeState? prev, HomeState next) {
      final bool wasShown = prev?.showSecondField ?? false;
      if (!wasShown && next.showSecondField) {
        secondFieldController.forward(from: 0);
      }
    });

    listenSelf((HomeState? prev, HomeState next) {
      if (prev?.topMotivationText == next.topMotivationText) return;
      final BuildContext? context = ref
          .watch(routerProvider)
          .navigatorKey
          .currentContext;
      if (context == null) return;
      final OverlayState overlay = Overlay.of(context, rootOverlay: true);

      showSnackBar(overlay);
    });

    return HomeState.initial(isLoading: false);
  }

  /// Show snack bar
  void showSnackBar(OverlayState overlay) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      showTopSnackBar(
        overlay,
        animationDuration: const Duration(milliseconds: 1000),
        displayDuration: const Duration(seconds: 5),
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
              state.topMotivationText.tr(),
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
  }

  /// Handle on form's content change
  void onHappenFieldChange(String value) {
    _debouncer.run(() {
      state = state.copyWith(showSecondField: true);
    });
  }

  /// Handle on form's content change
  void onActionFieldChange(String value) {
    _debouncer.run(() {
      state = state.copyWith(showValidationButton: true);
    });
  }

  /// Handle on tap validation
  void handleOnTapValidation() {}

  /// Save happen action content via service
  void saveHappenActionContent() {
    ref
        .read(happenActionServiceProvider)
        .addEntry(
          happen: happenController.text,
          action: becauseController.text,
        );
  }

  /// Clear form
  void clearForm() {
    happenController.clear();
    becauseController.clear();
    state = state.copyWith(showSecondField: false, showValidationButton: false);
  }

  /// Set step
  void increaseStep() {
    final int step = state.step + 1;
    final String topMotivationText = switch (step) {
      1 => LocaleKeys.secondPositiveMomentMessage.tr(),
      2 => LocaleKeys.thirdPositiveMomentMessage.tr(),
      3 => LocaleKeys.fourthPositiveMomentMessage.tr(),
      _ => state.topMotivationText,
    };

    if (step == 3) {
      ref.read(happenActionServiceProvider).incrementStreak();
    }

    state = state.copyWith(step: step, topMotivationText: topMotivationText);
  }

  /// Whether all steps have been completed
  bool get hasCompletedAllSteps => state.step >= totalSteps;

  /// Remaining cards to fill including the current one
  int get remainingCards {
    final int remaining = totalSteps - state.step;
    return remaining <= 0 ? 0 : remaining;
  }

  /// Reset to a fresh day (and clear previous entries)
  void resetDay() {
    ref.read(happenActionServiceProvider).clearEntries();
    happenController.clear();
    becauseController.clear();
    state = HomeState.initial(isLoading: false);
  }

  /// Trigger full completed
  void triggerFullCompleted() {
    ref.watch(navigationServiceProvider).navigateToReview();
  }

  /// Navigate to daily journey
  void navigateToDailyJourney() {
    _navigationService.navigateToDailyJourney();
  }
}
