import 'package:flutter/material.dart';

/// Class to represent a goal
class Goal {
  /// Constructor
  const Goal({
    required this.id,
    required this.title,
    required this.emoji,
    required this.color,
    required this.description,
  });

  /// Unique identifier
  final int id;

  /// Goal title
  final String title;

  /// Goal emoji
  final String emoji;

  /// Button color
  final Color color;

  /// Short description
  final String description;
}
