import 'package:freezed_annotation/freezed_annotation.dart';

part 'happen_action.entity.freezed.dart';

/// Happen action entity
@Freezed(copyWith: true)
final class HappenActionEntity with _$HappenActionEntity {
  /// Constructor
  const HappenActionEntity({
    required this.happen,
    required this.action,
    required this.date,
  });

  /// Happen
  @override
  final String happen;

  /// Action
  @override
  final String action;

  /// Date
  @override
  final DateTime date;
}
