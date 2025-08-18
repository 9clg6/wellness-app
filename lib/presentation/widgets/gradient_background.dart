import 'package:flutter/material.dart';
import 'package:mesh_gradient/mesh_gradient.dart';

/// Widget to display a gradient background
class GradientBackground extends StatefulWidget {
  /// Constructor
  const GradientBackground({
    required this.stackKey,
    this.children,
    this.child,
    super.key,
    this.opacity,
  });

  /// Stack key
  final GlobalKey<ScaffoldState> stackKey;

  /// Children
  final List<Widget>? children;

  /// Child
  final Widget? child;

  /// Opacity
  final double? opacity;

  @override
  State<GradientBackground> createState() => _GradientBackgroundState();
}

class _GradientBackgroundState extends State<GradientBackground>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    assert(
      !(widget.children == null && widget.child == null),
      'Either children or child must be provided',
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        key: widget.stackKey,
        fit: StackFit.expand,
        alignment: Alignment.center,
        children: <Widget>[
          Opacity(
            opacity: widget.opacity ?? 0.5,
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
          if (widget.children != null) ...widget.children!,
          if (widget.child != null) widget.child!,
        ],
      ),
    );
  }
}
