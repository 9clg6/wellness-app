import 'package:freezed_annotation/freezed_annotation.dart';

part 'solution.entity.freezed.dart';

/// Class to represent a solution screen
@freezed
abstract class SolutionScreenEntity with _$SolutionScreenEntity {
  /// Constructor
  factory SolutionScreenEntity({
    required String title,
    required String text,
    required String emoji,
  }) = _SolutionScreenEntity;
}
