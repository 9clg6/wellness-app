import 'package:confetti/confetti.dart' show ConfettiController;
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
import 'package:welly/core/utils/debouncer.util.dart';
import 'package:welly/presentation/screens/home/home.state.dart';

part 'home.view_model.g.dart';

/// Home view model
@riverpod
class HomeViewModel extends _$HomeViewModel {
  /// page controller
  final TextEditingController happenController = TextEditingController();

  /// Because controller
  final TextEditingController becauseController = TextEditingController();

  /// Happen action service
  late final HappenActionService _happenActionService;

  late final NavigationService _navigationService;

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

  /// Streak days
  int streakDays = 1;

  /// Confetti controller
  final ConfettiController controllerCenter = ConfettiController();

  /// Is from real home
  bool isFromRealHome = false;

  @override
  Future<HomeState> build() async {
    debugPrint('[HomeViewModel] build');
    _navigationService = ref.watch(navigationServiceProvider);
    _happenActionService = await ref.watch(happenActionServiceProvider.future);

    ref.onDispose(() {
      secondFieldController.dispose();
      happenController.dispose();
      becauseController.dispose();
      controllerCenter.dispose();
    });

    listenSelf((AsyncValue<HomeState>? prev, AsyncValue<HomeState> next) {
      if (prev == null || next.value == null) return;
      if (prev.hasValue == false || next.hasValue == false) return;

      final bool wasShown = prev.requireValue.showSecondField;
      if (!wasShown && next.requireValue.showSecondField) {
        secondFieldController.forward(from: 0);
      }
    });

    listenSelf((AsyncValue<HomeState>? prev, AsyncValue<HomeState> next) {
      if (prev == null || next.value == null) return;
      if (prev.hasValue == false || next.hasValue == false) return;

      if (prev.requireValue.topMotivationText ==
          next.requireValue.topMotivationText) {
        return;
      }
      final BuildContext? context = ref
          .watch(routerProvider)
          .navigatorKey
          .currentContext;
      if (context == null) return;
      final OverlayState overlay = Overlay.of(context, rootOverlay: true);

      showSnackBar(overlay);
    });

    return HomeState.initial();
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
              state.requireValue.topMotivationText.tr(),
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
      state = AsyncValue<HomeState>.data(
        state.requireValue.copyWith(showSecondField: true),
      );
    });
  }

  /// Handle on form's content change
  void onActionFieldChange(String value) {
    _debouncer.run(() {
      state = AsyncValue<HomeState>.data(
        state.requireValue.copyWith(showValidationButton: true),
      );
    });
  }

  /// Handle on tap validation
  void handleOnTapValidation() {}

  /// Save happen action content via service
  void saveHappenActionContent() {
    _happenActionService.addEntry(
      happen: happenController.text,
      action: becauseController.text,
      index: state.requireValue.step,
    );
  }

  /// Clear form
  void clearForm() {
    happenController.clear();
    becauseController.clear();
    state = AsyncValue<HomeState>.data(
      state.requireValue.copyWith(
        showSecondField: false,
        showValidationButton: false,
      ),
    );
  }

  /// Set step
  void increaseStep() {
    final int step = state.requireValue.step + 1;
    final String topMotivationText = switch (step) {
      1 => LocaleKeys.secondPositiveMomentMessage,
      2 => LocaleKeys.thirdPositiveMomentMessage,
      3 => LocaleKeys.fourthPositiveMomentMessage,
      _ => state.requireValue.topMotivationText,
    };

    if (step == 3) {
      ref.watch(userServiceProvider.future).then((UserService userService) {
        userService.increaseStreakDays();
      });
    }

    state = AsyncValue<HomeState>.data(
      state.requireValue.copyWith(
        step: step,
        topMotivationText: topMotivationText,
      ),
    );
  }

  /// Whether all steps have been completed
  bool get hasCompletedAllSteps =>
      state.requireValue.step >= HomeStateExtension.totalSteps;

  /// Reset to a fresh day (and clear previous entries)
  void resetDay() {
    _happenActionService.clearEntries();
    happenController.clear();
    becauseController.clear();
    state = AsyncValue<HomeState>.data(HomeState.initial());
  }

  /// Trigger full completed
  Future<void> triggerFullCompleted({bool isFromRealHome = false}) async {
    _happenActionService.markTodayEventsAsFilled();

    final bool? result = await _navigationService.navigateToReview();
 
    if (isFromRealHome) {
      _navigationService.pop(result: result);
    } else {
      _navigationService.navigateToRealHome(replace: true);
    }
  }

  /// Handle flower tap animation and logic
  Future<void> onFlowerTap({
    required AnimationController expandController,
  }) async {
    debugPrint('[HomeViewModel] onFlowerTap called');

    if (happenController.text.isEmpty || becauseController.text.isEmpty) {
      return;
    }

    final BuildContext? stackContext = stackKey.currentContext;
    final BuildContext? flowerContext = flowerKey.currentContext;

    if (stackContext == null || flowerContext == null) {
      debugPrint('[HomeViewModel] No context found');
      return;
    }

    debugPrint('[HomeViewModel] Starting animation');
    state = AsyncValue<HomeState>.data(
      state.requireValue.copyWith(showOverlay: true),
    );

    await expandController.forward(from: 0);
    debugPrint('[HomeViewModel] Animation completed');

    await Future<void>.delayed(const Duration(milliseconds: 400));
    final bool isLast =
        state.requireValue.step + 1 >= HomeStateExtension.totalSteps;

    state = AsyncValue<HomeState>.data(
      state.requireValue.copyWith(messageStep: isLast ? 2 : 1),
    );

    await Future<void>.delayed(const Duration(milliseconds: 600));
    saveHappenActionContent();
    clearForm();
  }

  /// Handle overlay close animation
  Future<void> onOverlayClose({
    required AnimationController expandController,
  }) async {
    await expandController.reverse();
    state = AsyncValue<HomeState>.data(
      state.requireValue.copyWith(showOverlay: false, messageStep: 0),
    );

    await Future<void>.delayed(const Duration(milliseconds: 500));
    increaseStep();
  }
}
