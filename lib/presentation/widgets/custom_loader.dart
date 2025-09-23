import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';

/// Custom Loader Widget
class CustomLoader extends StatelessWidget {
  /// Constructor
  const CustomLoader({super.key, this.size = 80});

  /// Size
  final double size;

  /// Build Method
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: size,
        width: size,
        child: const LoadingIndicator(
          indicatorType: Indicator.ballRotateChase,
          colors: <Color>[Colors.black],
        ),
      ),
    );
  }
}
