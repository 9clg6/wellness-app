import 'package:sembast/sembast.dart';
import 'package:starter_kit/core/extensions/date.extension.dart';
import 'package:starter_kit/data/datasources/local/happen_action.local_data_source.dart';
import 'package:starter_kit/data/model/local/happen_action.local_model.dart';

/// Implementation of local data source using Sembast
class HappenActionLocalDataSourceImpl implements HappenActionLocalDataSource {
  /// Constructor
  HappenActionLocalDataSourceImpl({required Database database})
    : _database = database;

  /// Sembast database instance
  final Database _database;

  /// Store name for happen actions
  static const String _storeName = 'happen_actions';

  /// Store reference
  final StoreRef<String, Map<String, dynamic>> _store = stringMapStoreFactory
      .store(_storeName);

  @override
  Future<List<HappenActionLocalModel>> getHappenActions() async {
    try {
      final List<RecordSnapshot<String, Map<String, dynamic>>> snapshots =
          await _store.find(_database);

      return snapshots
          .map(
            (RecordSnapshot<String, Map<String, dynamic>> snapshot) =>
                HappenActionLocalModel.fromJson(snapshot.value),
          )
          .toList();
    } on Exception catch (_) {
      // If parsing fails, return empty list
      return <HappenActionLocalModel>[];
    }
  }

  @override
  Future<void> saveHappenAction(HappenActionLocalModel happenAction) async {
    final String key = _generateKey(happenAction);
    await _store.record(key).put(_database, happenAction.toJson());
  }

  @override
  Future<void> saveHappenActions(
    List<HappenActionLocalModel> happenActions,
  ) async {
    // Clear existing data first
    await _store.delete(_database);

    // Save all actions
    for (final HappenActionLocalModel action in happenActions) {
      await saveHappenAction(action);
    }
  }

  @override
  Future<void> deleteHappenActionByDate(DateTime date) async {
    final List<RecordSnapshot<String, Map<String, dynamic>>> snapshots =
        await _store.find(_database);

    final List<String> keysToDelete = <String>[];

    for (final RecordSnapshot<String, Map<String, dynamic>> snapshot
        in snapshots) {
      final HappenActionLocalModel action = HappenActionLocalModel.fromJson(
        snapshot.value,
      );
      if (action.date.isSameDate(date)) {
        keysToDelete.add(snapshot.key);
      }
    }

    if (keysToDelete.isNotEmpty) {
      await _store.records(keysToDelete).delete(_database);
    }
  }

  @override
  Future<void> clearHappenActions() async {
    await _store.delete(_database);
  }

  /// Generate a unique key for a happen action
  String _generateKey(HappenActionLocalModel happenAction) {
    // Use timestamp + hash of content for uniqueness
    final String timestamp = happenAction.date.millisecondsSinceEpoch
        .toString();
    final String contentHash = '${happenAction.happen}_${happenAction.action}'
        .hashCode
        .toString();
    return '${timestamp}_$contentHash';
  }
}
