import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'goal.entity.freezed.dart';

/// Class to represent a goal
@freezed
abstract class Goal with _$Goal {
  /// Constructor
  factory Goal({
    required int id,
    required String title,
    required String emoji,
    required Color color,
    required String description,
  }) = _Goal;
}
