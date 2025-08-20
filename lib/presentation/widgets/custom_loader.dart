import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';

/// Custom Loader Widget
class CustomLoader extends StatelessWidget {
  /// Constructor
  const CustomLoader({super.key});

  /// Build Method
  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 80,
      width: 80,
      child: LoadingIndicator(
        indicatorType: Indicator.ballRotateChase,
        colors: <Color>[Colors.black],
      ),
    );
  }
}
