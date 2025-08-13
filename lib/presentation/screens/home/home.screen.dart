import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:mesh_gradient/mesh_gradient.dart';
import 'package:starter_kit/core/localization/generated/locale_keys.g.dart';
import 'package:starter_kit/foundation/routing/app_router.dart';
import 'package:starter_kit/presentation/screens/home/home.state.dart';
import 'package:starter_kit/presentation/screens/home/home.view_model.dart';
import 'package:starter_kit/presentation/screens/home/widgets/cards_stack_indicator.dart';
import 'package:starter_kit/presentation/widgets/continue_button_card.dart';
import 'package:starter_kit/presentation/screens/home/widgets/entry_card.dart';
import 'package:starter_kit/presentation/widgets/custom_button.dart';
import 'package:starter_kit/presentation/widgets/form_input.dart';

/// Home Screem
@RoutePage()
class HomeScreen extends ConsumerStatefulWidget {
  /// Constructor

  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen>
    with TickerProviderStateMixin {
  /// Second field controller

  late final AnimationController _expandController = AnimationController(
    vsync: this,
    duration: const Duration(seconds: 1),
  );

  Animation<RelativeRect>? _rectAnimation;
  Animation<double>? _radiusAnimation;
  late final Animation<double> _messageFade = CurvedAnimation(
    parent: _expandController,
    curve: const Interval(0.6, 1, curve: Curves.easeInOutCubicEmphasized),
  );

  bool _showOverlay = false;
  int _messageStep = 0; // 0: message initial, 1: message suivant avec bouton

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
    final HomeViewModel viewModel = ref.watch(homeViewModelProvider.notifier);
    final HomeState state = ref.watch(homeViewModelProvider);

    final double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        key: viewModel.stackKey,
        fit: StackFit.expand,
        alignment: Alignment.center,
        children: <Widget>[
          Opacity(
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
                    color: Colors.pink,
                  ),
                  MeshGradientPoint(
                    position: const Offset(0.7, 0.4),
                    color: Colors.orange,
                  ),
                  MeshGradientPoint(
                    position: const Offset(0.7, 0.9),
                    color: Colors.purple,
                  ),
                ],
                vsync: this,
              ),
            ),
          ),
          Positioned(
            top: 0.33 * height,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: _MainCardArea(
                height: height,
                state: state,
                onTapContinue: _onFlowerTap,
              ),
            ),
          ),
          if (_showOverlay &&
              _rectAnimation != null &&
              _radiusAnimation != null)
            Positioned.fill(
              child: IgnorePointer(
                ignoring: false,
                child: Stack(
                  children: <Widget>[
                    PositionedTransition(
                      rect: _rectAnimation!,
                      child: AnimatedBuilder(
                        animation: _expandController,
                        builder: (BuildContext context, Widget? child) {
                          return Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(
                                _radiusAnimation!.value,
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
                    FadeTransition(
                      opacity: _messageFade,
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 32),
                          child: AnimatedSwitcher(
                            duration: const Duration(milliseconds: 350),
                            transitionBuilder:
                                (Widget child, Animation<double> animation) =>
                                    FadeTransition(
                                      opacity: animation,
                                      child: child,
                                    ),
                            child: _messageStep == 0
                                ? Text(
                                    LocaleKeys.positiveMomentMessage.tr(),
                                    key: const ValueKey<String>(
                                      'overlay-message-1',
                                    ),
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black,
                                    ),
                                  )
                                : _messageStep == 1
                                ? Column(
                                    key: const ValueKey<String>(
                                      'overlay-message-2',
                                    ),
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Text(
                                        LocaleKeys.positiveMomentMessage2.tr(),
                                        textAlign: TextAlign.center,
                                        style: const TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black,
                                        ),
                                      ),
                                      const SizedBox(height: 16),
                                      SizedBox(
                                        width: 160,
                                        child: CustomButton(
                                          title: LocaleKeys.yes.tr(),
                                          backgroundColor: Colors.black,
                                          onTap: _onOuiTap,
                                          boldTitle: true,
                                        ),
                                      ),
                                    ],
                                  )
                                : Column(
                                    key: const ValueKey<String>(
                                      'overlay-message-3',
                                    ),
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Text(
                                        LocaleKeys.bravo.tr(),
                                        textAlign: TextAlign.center,
                                        style: const TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.black,
                                        ),
                                      ),
                                      const SizedBox(height: 16),
                                      SizedBox(
                                        width: 220,
                                        child: CustomButton(
                                          title: LocaleKeys.seeReview.tr(),
                                          backgroundColor: Colors.black,
                                          onTap: _onSeeReviewTap,
                                          boldTitle: true,
                                        ),
                                      ),
                                      const SizedBox(height: 8),
                                      SizedBox(
                                        width: 160,
                                        child: CustomButton(
                                          title: LocaleKeys.close.tr(),
                                          backgroundColor: Colors.transparent,
                                          titleColor: Colors.black,
                                          onTap: _onOuiTap,
                                          boldTitle: true,
                                        ),
                                      ),
                                    ],
                                  ),
                          ),
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

  void _onFlowerTap() {
    final HomeViewModel viewModel = ref.read(homeViewModelProvider.notifier);
    if (viewModel.happenController.text.isEmpty ||
        viewModel.becauseController.text.isEmpty) {
      return;
    }

    final BuildContext? stackContext = viewModel.stackKey.currentContext;
    final BuildContext? flowerContext = viewModel.flowerKey.currentContext;

    if (stackContext == null || flowerContext == null) {
      return;
    }

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
      parent: _expandController,
      curve: Curves.bounceOut,
    );

    setState(() {
      _showOverlay = true;
      _rectAnimation = RelativeRectTween(
        begin: begin,
        end: RelativeRect.fill,
      ).animate(curve);
      _radiusAnimation = Tween<double>(begin: 32, end: 0).animate(curve);
    });

    _expandController.forward(from: 0).whenComplete(() async {
      await Future<void>.delayed(const Duration(milliseconds: 800));
      if (!mounted) return;
      final HomeState current = ref.read(homeViewModelProvider);
      final bool isLast = current.step + 1 >= HomeViewModel.totalSteps;
      setState(() => _messageStep = isLast ? 2 : 1);
    });

    Future<void>.delayed(const Duration(seconds: 1), () {
      viewModel
        ..saveHappenActionContent()
        ..clearForm();
    });
  }

  void _onOuiTap() {
    _expandController.reverse().whenComplete(() {
      setState(() {
        _showOverlay = false;
        _messageStep = 0;
      });

      Future<void>.delayed(const Duration(milliseconds: 500), () {
        ref.read(homeViewModelProvider.notifier).increaseStep();
      });
    });
  }

  void _onSeeReviewTap() {
    context.router.push(const ReviewRoute());
    _onOuiTap();
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

class _MainCardArea extends ConsumerWidget {
  const _MainCardArea({
    required this.height,
    required this.state,
    required this.onTapContinue,
  });

  final double height;
  final HomeState state;
  final VoidCallback onTapContinue;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final HomeViewModel viewModel = ref.watch(homeViewModelProvider.notifier);

    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SizedBox(
          height: height * 0.3,
          child: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              CardsStackIndicator(
                belowCount: (viewModel.remainingCards - 1).clamp(0, 3),
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
                            style: Theme.of(context).textTheme.bodyMedium
                                ?.copyWith(color: Colors.black),
                            minLines: null,
                            expands: true,
                            controller: viewModel.becauseController,
                            labelText: LocaleKeys.because.tr(),
                            labelStyle: Theme.of(context).textTheme.bodyMedium
                                ?.copyWith(color: Colors.black),
                            onChanged: viewModel.onActionFieldChange,
                          ),
                        ),
                      )
                    : null,
              ),
            ],
          ),
        ),
        const Gap(20),
        AnimatedSwitcher(
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
                  key: const ValueKey<String>('validation-shown'),
                  children: <Widget>[
                    const Gap(22),
                    ContinueButtonCard(
                       onTap: onTapContinue,
                       key: viewModel.flowerKey,
                    ),
                    const Gap(16),
                    ContinueButtonCard(
                      title: 'Test',
                      key: const ValueKey<String>('full-completed-button'),
                      onTap: viewModel.triggerFullCompleted,
                    ),
                  ],
                )
              : const SizedBox.shrink(
                  key: ValueKey<String>('validation-hidden'),
                ),
        ),
      ],
    );
  }
}
