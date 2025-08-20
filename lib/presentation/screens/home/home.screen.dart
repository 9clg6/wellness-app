import 'package:auto_route/auto_route.dart';
import 'package:confetti/confetti.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:starter_kit/core/localization/generated/locale_keys.g.dart';
import 'package:starter_kit/presentation/screens/home/home.state.dart';
import 'package:starter_kit/presentation/screens/home/home.view_model.dart';
import 'package:starter_kit/presentation/widgets/cards_stack_indicator.dart';
import 'package:starter_kit/presentation/widgets/entry_card.dart';
import 'package:starter_kit/presentation/widgets/continue_button_card.dart';
import 'package:starter_kit/presentation/widgets/form_input.dart';
import 'package:starter_kit/presentation/widgets/gradient_background.dart';
import 'package:starter_kit/presentation/widgets/text_variant.dart';

/// Home Screen
@RoutePage()
class HomeScreen extends ConsumerStatefulWidget {
  /// Constructor
  const HomeScreen({super.key, this.isFromRealHome = false});

  /// Is from real home
  final bool isFromRealHome;

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen>
    with TickerProviderStateMixin {
  late final AnimationController _expandController = AnimationController(
    vsync: this,
    duration: const Duration(seconds: 1),
  );

  late final Animation<double> _messageFade = CurvedAnimation(
    parent: _expandController,
    curve: const Interval(0.6, 1, curve: Curves.easeInOutCubicEmphasized),
  );

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      final HomeViewModel viewModel = ref.read(homeViewModelProvider.notifier);
      viewModel
        ..secondFieldController = AnimationController(
          vsync: this,
          duration: const Duration(milliseconds: 350),
        )
        ..secondFieldFade = CurvedAnimation(
          parent: viewModel.secondFieldController,
          curve: Curves.easeOutCubic,
        )
        ..secondFieldSlide = Tween<Offset>(
          begin: const Offset(0, 0.03),
          end: Offset.zero,
        ).animate(viewModel.secondFieldFade);
    });
  }

  @override
  Widget build(BuildContext context) {
    final HomeState state = ref.watch(homeViewModelProvider);
    final double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: widget.isFromRealHome
          ? null
          : AppBar(
              leading: IconButton(
                onPressed: context.maybePop,
                icon: const Icon(Icons.close),
              ),
            ),
      body: GradientBackground(
        stackKey: GlobalKey(),
        children: <Widget>[
          Positioned(
            top: 0.33 * height,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: _MainCardArea(
                height: height,
                expandController: _expandController,
              ),
            ),
          ),
          if (state.showOverlay &&
              state.rectAnimation != null &&
              state.radiusAnimation != null)
            _CongratsOverlayParent(
              expandController: _expandController,
              messageFade: _messageFade,
            ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _expandController.dispose();
    final HomeViewModel viewModel = ref.read(homeViewModelProvider.notifier);
    try {
      viewModel.secondFieldController.dispose();
    } on Exception catch (_) {}
    super.dispose();
  }
}

class _CongratsOverlayParent extends ConsumerWidget {
  const _CongratsOverlayParent({
    required AnimationController expandController,
    required Animation<double> messageFade,
  }) : _expandController = expandController,
       _messageFade = messageFade;

  final AnimationController _expandController;
  final Animation<double> _messageFade;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final HomeState state = ref.watch(homeViewModelProvider);

    return Positioned.fill(
      child: IgnorePointer(
        ignoring: false,
        child: Stack(
          children: <Widget>[
            PositionedTransition(
              rect: state.rectAnimation!,
              child: AnimatedBuilder(
                animation: _expandController,
                builder: (BuildContext context, Widget? child) {
                  return Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(
                        state.radiusAnimation!.value,
                      ),
                      boxShadow: <BoxShadow>[
                        if (_expandController.value < 1)
                          BoxShadow(
                            color: Colors.black.withValues(alpha: 0.15),
                            blurRadius: 16,
                            spreadRadius: 1,
                          ),
                      ],
                    ),
                  );
                },
              ),
            ),
            _CongratsOverlay(
              messageFade: _messageFade,
              expandController: _expandController,
            ),
          ],
        ),
      ),
    );
  }
}

class _CongratsOverlay extends ConsumerWidget {
  const _CongratsOverlay({
    required Animation<double> messageFade,
    required AnimationController expandController,
  }) : _messageFade = messageFade,
       _expandController = expandController;

  final Animation<double> _messageFade;
  final AnimationController _expandController;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final HomeState state = ref.watch(homeViewModelProvider);

    return FadeTransition(
      opacity: _messageFade,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: AnimatedSwitcher(
            duration: const Duration(milliseconds: 350),
            transitionBuilder: (Widget child, Animation<double> animation) =>
                FadeTransition(opacity: animation, child: child),
            child: state.messageStep == 0
                ? TextVariant(
                    LocaleKeys.positiveMomentMessage.tr(),
                    key: const ValueKey<String>('overlay-message-1'),
                    textAlign: TextAlign.center,
                    variantType: TextVariantType.titleLarge,
                    fontWeight: FontWeight.bold,
                  )
                : state.messageStep == 1
                ? SecondCongratsChild(expandController: _expandController)
                : _LastCongratsChild(expandController: _expandController),
          ),
        ),
      ),
    );
  }
}

class _LastCongratsChild extends ConsumerStatefulWidget {
  const _LastCongratsChild({required this.expandController});

  final AnimationController expandController;

  @override
  ConsumerState<_LastCongratsChild> createState() => _LastCongratsChildState();
}

class _LastCongratsChildState extends ConsumerState<_LastCongratsChild> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      final HomeViewModel viewModel = ref.watch(homeViewModelProvider.notifier);
      viewModel.controllerCenter.play();
    });
  }

  @override
  Widget build(BuildContext context) {
    final HomeViewModel viewModel = ref.watch(homeViewModelProvider.notifier);

    return ConfettiWidget(
      confettiController: viewModel.controllerCenter,
      blastDirectionality: BlastDirectionality.explosive,
      emissionFrequency: 0.005,
      numberOfParticles: 300,
      gravity: 0.05,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          key: const ValueKey<String>('overlay-message-3'),
          children: <Widget>[
            TextVariant(
              LocaleKeys.bravo.tr(),
              textAlign: TextAlign.center,
              variantType: TextVariantType.titleLarge,
              fontWeight: FontWeight.bold,
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: 220,
              child: ContinueButtonCard(
                title: LocaleKeys.seeReview.tr(),
                color: Colors.black,
                width: 220,
                onTap: () {
                  viewModel
                    ..onReviewTap()
                    ..onOverlayClose(expandController: widget.expandController);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// Second congrats child
class SecondCongratsChild extends ConsumerWidget {
  /// Constructor
  const SecondCongratsChild({
    required AnimationController expandController,
    super.key,
  }) : _expandController = expandController;

  final AnimationController _expandController;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final HomeViewModel viewModel = ref.watch(homeViewModelProvider.notifier);

    return Column(
      key: const ValueKey<String>('overlay-message-2'),
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        TextVariant(
          LocaleKeys.positiveMomentMessage2.tr(),
          textAlign: TextAlign.center,
          variantType: TextVariantType.titleLarge,
          fontWeight: FontWeight.bold,
        ),
        const SizedBox(height: 16),
        ContinueButtonCard(
          title: LocaleKeys.yes.tr(),
          color: Colors.black,
          width: 200,
          onTap: () =>
              viewModel.onOverlayClose(expandController: _expandController),
        ),
      ],
    );
  }
}

class _MainCardArea extends ConsumerWidget {
  const _MainCardArea({required this.height, required this.expandController});

  final double height;

  final AnimationController expandController;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        _StackCardParent(height: height),
        const Gap(20),
        _NextButton(expandController: expandController),
      ],
    );
  }
}

class _StackCardParent extends ConsumerWidget {
  const _StackCardParent({required this.height});

  final double height;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final HomeViewModel viewModel = ref.watch(homeViewModelProvider.notifier);
    final HomeState state = ref.watch(homeViewModelProvider);

    debugPrint('remainingCards: ${state.remainingCards}');

    return SizedBox(
      height: height * 0.3,
      child: Stack(
        key: viewModel.stackKey,
        fit: StackFit.expand,
        children: <Widget>[
          CardsStackIndicator(
            belowCount: (state.remainingCards - 1).clamp(0, 3),
          ),
          EntryCard(
            height: height * 0.3,
            happenController: viewModel.happenController,
            becauseController: viewModel.becauseController,
            onHappenChanged: viewModel.onHappenFieldChange,
            onBecauseChanged: viewModel.onActionFieldChange,
            secondField: state.showSecondField
                ? FadeTransition(
                    opacity: viewModel.secondFieldFade,
                    child: SlideTransition(
                      position: viewModel.secondFieldSlide,
                      child: FormInput(
                        minLines: null,
                        expands: true,
                        controller: viewModel.becauseController,
                        labelText: LocaleKeys.because.tr(),
                        onChanged: viewModel.onActionFieldChange,
                      ),
                    ),
                  )
                : null,
          ),
        ],
      ),
    );
  }
}

class _NextButton extends ConsumerWidget {
  const _NextButton({required this.expandController});

  final AnimationController expandController;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final HomeViewModel viewModel = ref.watch(homeViewModelProvider.notifier);
    final HomeState state = ref.watch(homeViewModelProvider);

    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 300),
      switchInCurve: Curves.easeOutCubic,
      switchOutCurve: Curves.easeInCubic,
      transitionBuilder: (Widget child, Animation<double> animation) {
        final Animation<Offset> offset = Tween<Offset>(
          begin: const Offset(0, 0.05),
          end: Offset.zero,
        ).animate(animation);

        return FadeTransition(
          opacity: animation,
          child: SlideTransition(position: offset, child: child),
        );
      },
      child: state.showValidationButton
          ? Column(
              mainAxisSize: MainAxisSize.min,
              key: const ValueKey<String>('validation-shown'),
              children: <Widget>[
                const Gap(22),
                ContinueButtonCard(
                  onTap: () =>
                      viewModel.onFlowerTap(expandController: expandController),
                  key: viewModel.flowerKey,
                  width: 200,
                ),
                // const Gap(16),
                // ContinueButtonCard(
                //   title: 'Test',
                //   key: const ValueKey<String>('full-completed-button'),
                //   onTap: viewModel.triggerFullCompleted,
                // ),
              ],
            )
          : const SizedBox.shrink(key: ValueKey<String>('validation-hidden')),
    );
  }
}
