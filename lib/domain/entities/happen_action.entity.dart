import 'package:freezed_annotation/freezed_annotation.dart';

part 'happen_action.entity.freezed.dart';

/// Happen action entity (without date)
@Freezed(copyWith: true)
final class HappenActionEntity with _$HappenActionEntity {
  /// Constructor
  const HappenActionEntity({required this.happen, required this.action});

  /// Happen - The positive thing that happened
  @override
  final String happen;

  /// Action - What was done to make it happen
  @override
  final String action;
}
