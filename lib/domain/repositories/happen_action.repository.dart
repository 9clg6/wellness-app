import 'package:welly/domain/entities/daily_happen_action.entity.dart';

/// Interface for happen action repository
abstract class HappenActionRepository {
  /// Get all daily happen actions
  Future<List<DailyHappenActionEntity>> getHappenActions();

  /// Save daily happen action
  Future<void> saveHappenAction(DailyHappenActionEntity dailyHappenAction);

  /// Save all daily happen actions
  Future<void> saveHappenActions(
    List<DailyHappenActionEntity> dailyHappenActions,
  );

  /// Delete daily happen action by date
  Future<void> deleteHappenActionByDate(DateTime date);

  /// Clear all daily happen actions
  Future<void> clearHappenActions();
}
