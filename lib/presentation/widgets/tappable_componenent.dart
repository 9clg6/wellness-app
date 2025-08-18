import 'package:flutter/material.dart';

/// A tappable component
class TappableComponent extends StatelessWidget {
  /// Constructor
  const TappableComponent({
    required this.child,
    required this.onTap,
    required this.color,
    this.borderRadius,
    this.splashColor,
    super.key,
  });

  /// The child widget
  final Widget child;

  /// The on tap callback
  final VoidCallback onTap;

  /// The color of the component
  final Color color;

  /// The splash color of the component
  final Color? splashColor;

  /// The border radius of the component
  final BorderRadius? borderRadius;

  @override
  Widget build(BuildContext context) {
    final BorderRadius radius = borderRadius ?? BorderRadius.circular(12);

    return Material(
      type: MaterialType.transparency,
      child: Ink(
        decoration: BoxDecoration(
          color: color,
          borderRadius: radius,
        ),
        child: InkWell(
          onTap: onTap,
          borderRadius: radius,
          splashColor: splashColor,
          highlightColor: Colors.transparent,
          child: child,
        ),
      ),
    );
  }
}
