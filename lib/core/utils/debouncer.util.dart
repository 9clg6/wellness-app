import 'dart:async' show Timer;

import 'package:flutter/material.dart' show VoidCallback;

/// A utility to "debounce" a function, to avoid it being called too frequently.
/// Very useful for search fields or actions triggered by the user repeatedly.
class Debouncer {
  /// Debouncer
  Debouncer({required this.milliseconds});

  /// Milliseconds
  final int milliseconds;

  /// Action
  VoidCallback? action;

  /// Timer
  Timer? _timer;

  /// Run after a delay
  void run(VoidCallback action) {
    _timer?.cancel();
    _timer = Timer(Duration(milliseconds: milliseconds), action);
  }

  /// Cancel the timer
  void cancel() {
    _timer?.cancel();
  }

  /// Dispose the timer
  void dispose() {
    _timer?.cancel();
  }
}
