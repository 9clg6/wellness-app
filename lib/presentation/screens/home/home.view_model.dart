import 'dart:math';

import 'package:confetti/confetti.dart' show ConfettiController;
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:starter_kit/core/localization/generated/locale_keys.g.dart';
import 'package:starter_kit/core/providers/core/services/happen_action.service.provider.dart';
import 'package:starter_kit/core/providers/core/services/navigation.service.provider.dart';
import 'package:starter_kit/core/providers/core/services/user.service.provider.dart';
import 'package:starter_kit/core/providers/foundation/services/navigation.service.dart';
import 'package:starter_kit/core/providers/foundation/services/user.service.dart';
import 'package:starter_kit/core/providers/presentation/router.provider.dart';
import 'package:starter_kit/core/utils/debouncer.util.dart';
import 'package:starter_kit/presentation/screens/home/home.state.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

part 'home.view_model.g.dart';

/// Home view model
@riverpod
class HomeViewModel extends _$HomeViewModel {
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

  /// Confetti controller
  final ConfettiController controllerCenter = ConfettiController();

  @override
  HomeState build() {
    debugPrint('[HomeViewModel] build');
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
        .watch(happenActionServiceProvider)
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
      ref.watch(userServiceProvider.future).then((UserService userService) {
        userService.increaseStreakDays();
      });
    }

    state = state.copyWith(step: step, topMotivationText: topMotivationText);
  }

  /// Whether all steps have been completed
  bool get hasCompletedAllSteps => state.step >= state.totalSteps;

  /// Reset to a fresh day (and clear previous entries)
  void resetDay() {
    ref.watch(happenActionServiceProvider).clearEntries();
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

  /// Handle flower tap animation and logic
  Future<void> onFlowerTap({
    required AnimationController expandController,
  }) async {
    if (happenController.text.isEmpty || becauseController.text.isEmpty) {
      debugPrint('[HomeViewModel] Empty fields');
      return;
    }

    // Récupération des contextes
    final BuildContext? stackContext = stackKey.currentContext;
    final BuildContext? flowerContext = flowerKey.currentContext;

    if (stackContext == null || flowerContext == null) {
      debugPrint('[HomeViewModel] No context found');
      return;
    }

    // Calculs géométriques
    final RenderBox stackBox = stackContext.findRenderObject()! as RenderBox;
    final RenderBox flowerBox = flowerContext.findRenderObject()! as RenderBox;

    final Offset flowerGlobalTopLeft = flowerBox.localToGlobal(Offset.zero);
    final Offset flowerTopLeftInStack = stackBox.globalToLocal(
      flowerGlobalTopLeft,
    );

    final Size flowerSize = flowerBox.size;
    final Size stackSize = stackBox.size;

    final Rect beginRect = Rect.fromLTWH(
      flowerTopLeftInStack.dx,
      flowerTopLeftInStack.dy,
      flowerSize.width,
      flowerSize.height,
    );

    final RelativeRect begin = RelativeRect.fromRect(
      beginRect,
      Offset.zero & stackSize,
    );

    final Animation<double> curve = CurvedAnimation(
      parent: expandController,
      curve: Curves.bounceOut,
    );

    // Mise à jour de l'état
    state = state.copyWith(
      showOverlay: true,
      rectAnimation: RelativeRectTween(
        begin: begin,
        end: RelativeRect.fill,
      ).animate(curve),
      radiusAnimation: Tween<double>(begin: 32, end: 0).animate(curve),
    );

    // Animation
    await expandController.forward(from: 0);

    // Délai et mise à jour du message
    await Future<void>.delayed(const Duration(milliseconds: 800));
    final bool isLast = state.step + 1 >= state.totalSteps;
    state = state.copyWith(messageStep: isLast ? 2 : 1);

    // Sauvegarde et nettoyage
    await Future<void>.delayed(const Duration(seconds: 1));
    saveHappenActionContent();
    clearForm();
  }

  /// Handle overlay close animation
  Future<void> onOverlayClose({
    required AnimationController expandController,
  }) async {
    await expandController.reverse();
    state = state.copyWith(showOverlay: false, messageStep: 0);

    await Future<void>.delayed(const Duration(milliseconds: 500));
    increaseStep();
  }

  /// Handle review navigation
  void onReviewTap() {
    _navigationService.navigateToReview();
  }

  /// A custom Path to paint stars.
  Path drawStar(Size size) {
    // Method to convert degrees to radians
    double degToRad(double deg) => deg * (pi / 180.0);

    const int numberOfPoints = 5;
    final double halfWidth = size.width / 2;
    final double externalRadius = halfWidth;
    final double internalRadius = halfWidth / 2.5;
    final double degreesPerStep = degToRad(360 / numberOfPoints);
    final double halfDegreesPerStep = degreesPerStep / 2;
    final Path path = Path();
    final double fullAngle = degToRad(360);
    path.moveTo(size.width, halfWidth);

    for (double step = 0; step < fullAngle; step += degreesPerStep) {
      path
        ..lineTo(
          halfWidth + externalRadius * cos(step),
          halfWidth + externalRadius * sin(step),
        )
        ..lineTo(
          halfWidth + internalRadius * cos(step + halfDegreesPerStep),
          halfWidth + internalRadius * sin(step + halfDegreesPerStep),
        );
    }
    path.close();
    return path;
  }
}
