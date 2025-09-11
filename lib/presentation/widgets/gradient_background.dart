import 'dart:math';

import 'package:flutter/material.dart';

/// Widget to display a gradient background
class GradientBackground extends StatefulWidget {
  /// Constructor
  const GradientBackground({
    this.stackKey,
    this.children,
    this.child,
    super.key,
    this.opacity,
    this.randomGradient = false,
  });

  /// Stack key
  final GlobalKey<ScaffoldState>? stackKey;

  /// Children
  final List<Widget>? children;

  /// Child
  final Widget? child;

  /// Opacity
  final double? opacity;

  /// Random gradient
  final bool randomGradient;

  @override
  State<GradientBackground> createState() => _GradientBackgroundState();
}

class _GradientBackgroundState extends State<GradientBackground>
    with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();

    if (widget.randomGradient) {
      _colors = _getRandomColors();
    } else {
      _colors = <Color>[
        Colors.white,
        const Color(0xFFF1E2FA),
        const Color(0xFFFCDAEA),
        const Color(0xFFD8C0FF),
      ];
    }
  }

  late final List<Color> _colors;

  List<Color> _getRandomColors() {
    return <Color>[
      Color.fromARGB(
        255,
        Random().nextInt(255),
        Random().nextInt(255),
        Random().nextInt(255),
      ),
      Color.fromARGB(
        255,
        Random().nextInt(255),
        Random().nextInt(255),
        Random().nextInt(255),
      ),
      Color.fromARGB(
        255,
        Random().nextInt(255),
        Random().nextInt(255),
        Random().nextInt(255),
      ),
      Color.fromARGB(
        255,
        Random().nextInt(255),
        Random().nextInt(255),
        Random().nextInt(255),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    assert(
      !(widget.children == null && widget.child == null),
      'Either children or child must be provided',
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        key: widget.stackKey ?? GlobalKey(),
        fit: StackFit.expand,
        alignment: Alignment.center,
        children: <Widget>[
          Opacity(
            opacity: widget.opacity ?? 0.5,
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: _colors,
                  stops: const <double>[0, 0.3, 0.7, 1],
                ),
              ),
            ),
          ),
          if (widget.children != null) ...widget.children!,
          if (widget.child != null) widget.child!,
        ],
      ),
    );
  }
}
