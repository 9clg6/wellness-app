import 'package:flutter/material.dart';

/// Class to represent a solution screen
class SolutionScreen {
  /// Constructor
  const SolutionScreen({
    required this.title,
    required this.text,
    required this.emoji,
    required this.color,
  });

  /// Screen title
  final String title;

  /// Screen text
  final String text;

  /// Screen emoji
  final String emoji;

  /// Screen color
  final Color color;
}
