import 'package:flutter/material.dart';
import 'package:starter_kit/domain/entities/happen_action.entity.dart';
import 'package:starter_kit/presentation/widgets/review_card.dart';

/// Review arc wheel
class ReviewArcWheel extends StatefulWidget {
  /// Constructor
  const ReviewArcWheel({
    required this.entries,
    super.key,
    this.itemHeight = 220,
    this.viewportFraction = 0.92,
    this.arcHeight = 56,
    this.sideScale = 0.94,
    this.sideRotation = 0.02,
    this.centerScale = 1.08,
  });

  /// Entries
  final List<HappenActionEntity> entries;

  /// Item height
  final double itemHeight;

  /// Viewport fraction
  final double viewportFraction;

  /// Arc height
  final double sideScale;

  /// Side rotation
  final double sideRotation;

  /// Arc height
  final double arcHeight;

  /// Center scale to create overlap
  final double centerScale;

  /// Build
  @override
  State<ReviewArcWheel> createState() => _ReviewArcWheelState();
}

/// Review arc wheel state
class _ReviewArcWheelState extends State<ReviewArcWheel> {
  /// Controller
  late final PageController _controller;

  /// Init state
  @override
  void initState() {
    super.initState();
    _controller = PageController(viewportFraction: widget.viewportFraction);
  }

  /// Dispose
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final List<HappenActionEntity> entries = widget.entries;
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return PageView.builder(
          controller: _controller,
          allowImplicitScrolling: true,
          clipBehavior: Clip.none,
          physics: const BouncingScrollPhysics(),
          itemCount: entries.length,
          itemBuilder: (BuildContext context, int index) {
            return AnimatedBuilder(
              animation: _controller,
              builder: (BuildContext context, Widget? child) {
                double page = 0;
                if (_controller.hasClients &&
                    _controller.positions.isNotEmpty) {
                  page = _controller.page ?? _controller.initialPage.toDouble();
                } else {
                  page = _controller.initialPage.toDouble();
                }

                final double delta = index - page;
                final double clamped = delta.clamp(-1.0, 1.0);

                final double verticalOffset =
                    widget.arcHeight * (clamped * clamped);

                final double t = 1 - clamped.abs();
                final double scale =
                    widget.sideScale +
                    (widget.centerScale - widget.sideScale) * t;
                final double rotationZ = -widget.sideRotation * clamped;

                return Transform.translate(
                  offset: Offset(0, verticalOffset),
                  child: Transform.rotate(
                    angle: rotationZ,
                    child: Transform.scale(
                      scale: scale,
                      child: Center(
                        child: OverflowBox(
                          maxWidth: constraints.maxWidth * 1.1,
                          child: SizedBox(
                            width: constraints.maxWidth * 0.91,
                            child: IntrinsicHeight(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 4,
                                ),
                                child: ReviewCard(entry: entries[index]),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            );
          },
        );
      },
    );
  }
}
