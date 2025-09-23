import 'package:welly/data/model/local/happen_action.local_model.dart';

/// Interface for local data source
abstract class HappenActionLocalDataSource {
  /// Get all happen actions
  Future<List<HappenActionLocalModel>> getHappenActions();

  /// Save happen action
  Future<void> saveHappenAction(HappenActionLocalModel happenAction);

  /// Save all happen actions
  Future<void> saveHappenActions(List<HappenActionLocalModel> happenActions);

  /// Delete happen action by date
  Future<void> deleteHappenActionByDate(DateTime date);

  /// Clear all happen actions
  Future<void> clearHappenActions();
}
