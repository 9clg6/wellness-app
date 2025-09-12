import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:starter_kit/domain/entities/happen_action.entity.dart';

part 'daily_happen_action.entity.freezed.dart';

/// Daily happen action entity containing 3 happen actions
@Freezed(copyWith: true)
final class DailyHappenActionEntity with _$DailyHappenActionEntity {
  /// Constructor
  const DailyHappenActionEntity({
    required this.date,
    required this.happenActions,
  });

  /// Factory constructor to create with exactly 3 happen actions
  factory DailyHappenActionEntity.create({
    required DateTime date,
    required HappenActionEntity first,
    required HappenActionEntity second,
    required HappenActionEntity third,
  }) {
    return DailyHappenActionEntity(
      date: date,
      happenActions: <HappenActionEntity>[first, second, third],
    );
  }

  /// Date of the daily happen actions
  @override
  final DateTime date;

  /// List of 3 happen actions for the day
  @override
  final List<HappenActionEntity> happenActions;

  /// Check if all 3 happen actions are filled
  bool get isComplete => happenActions.length == 3;

  /// Get happen action by index (0, 1, or 2)
  HappenActionEntity? getHappenAction(int index) {
    if (index >= 0 && index < happenActions.length) {
      return happenActions[index];
    }
    return null;
  }

  /// Update happen action at specific index
  DailyHappenActionEntity updateHappenAction(
    int index,
    HappenActionEntity happenAction,
  ) {
    if (index < 0 || index >= 3) {
      return this;
    }

    final List<HappenActionEntity> newActions = List<HappenActionEntity>.from(
      happenActions,
    );
    while (newActions.length <= index) {
      newActions.add(const HappenActionEntity(happen: '', action: ''));
    }
    newActions[index] = happenAction;

    return copyWith(happenActions: newActions);
  }
}
