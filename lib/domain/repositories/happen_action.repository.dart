import 'package:starter_kit/domain/entities/happen_action.entity.dart';

/// Interface for happen action repository
abstract class HappenActionRepository {
  /// Get all happen actions
  Future<List<HappenActionEntity>> getHappenActions();

  /// Save happen action
  Future<void> saveHappenAction(HappenActionEntity happenAction);

  /// Save all happen actions
  Future<void> saveHappenActions(List<HappenActionEntity> happenActions);

  /// Delete happen action by date
  Future<void> deleteHappenActionByDate(DateTime date);

  /// Clear all happen actions
  Future<void> clearHappenActions();
}
