import 'package:starter_kit/data/datasources/local/happen_action.local_data_source.dart';
import 'package:starter_kit/data/model/local/happen_action.local_model.dart';
import 'package:starter_kit/domain/entities/daily_happen_action.entity.dart';
import 'package:starter_kit/domain/entities/happen_action.entity.dart';
import 'package:starter_kit/domain/repositories/happen_action.repository.dart';

/// Implementation of happen action repository
class HappenActionRepositoryImpl implements HappenActionRepository {
  /// Constructor
  HappenActionRepositoryImpl({
    required HappenActionLocalDataSource localDataSource,
  }) : _localDataSource = localDataSource;

  /// Local data source
  final HappenActionLocalDataSource _localDataSource;

  @override
  Future<List<DailyHappenActionEntity>> getHappenActions() async {
    final List<HappenActionLocalModel> localModels = await _localDataSource
        .getHappenActions();
    return _mapLocalModelsToDailyEntities(localModels);
  }

  @override
  Future<void> saveHappenAction(
    DailyHappenActionEntity dailyHappenAction,
  ) async {
    final List<HappenActionLocalModel> localModels =
        _mapDailyEntityToLocalModels(dailyHappenAction);
    await _localDataSource.saveHappenActions(localModels);
  }

  @override
  Future<void> saveHappenActions(
    List<DailyHappenActionEntity> dailyHappenActions,
  ) async {
    final List<HappenActionLocalModel> localModels = dailyHappenActions
        .expand(_mapDailyEntityToLocalModels)
        .toList();
    await _localDataSource.saveHappenActions(localModels);
  }

  @override
  Future<void> deleteHappenActionByDate(DateTime date) async {
    await _localDataSource.deleteHappenActionByDate(date);
  }

  @override
  Future<void> clearHappenActions() async {
    await _localDataSource.clearHappenActions();
  }

  /// Map local models to daily entities (group by date)
  List<DailyHappenActionEntity> _mapLocalModelsToDailyEntities(
    List<HappenActionLocalModel> localModels,
  ) {
    final Map<DateTime, List<HappenActionEntity>> groupedByDate =
        <DateTime, List<HappenActionEntity>>{};

    for (final HappenActionLocalModel localModel in localModels) {
      final DateTime date = localModel.date;
      final HappenActionEntity entity = _mapLocalModelToEntity(localModel);

      if (!groupedByDate.containsKey(date)) {
        groupedByDate[date] = <HappenActionEntity>[];
      }
      groupedByDate[date]!.add(entity);
    }

    return groupedByDate.entries.map((
      MapEntry<DateTime, List<HappenActionEntity>> entry,
    ) {
      final DateTime date = entry.key;
      final List<HappenActionEntity> happenActions = entry.value;

      // Ensure we have exactly 3 happen actions
      while (happenActions.length < 3) {
        happenActions.add(HappenActionEntity(happen: '', action: ''));
      }

      return DailyHappenActionEntity.create(
        date: date,
        first: happenActions[0],
        second: happenActions[1],
        third: happenActions[2],
      );
    }).toList();
  }

  /// Map daily entity to local models
  List<HappenActionLocalModel> _mapDailyEntityToLocalModels(
    DailyHappenActionEntity dailyEntity,
  ) {
    return dailyEntity.happenActions
        .map(
          (HappenActionEntity happenAction) =>
              _mapEntityToLocalModel(happenAction, dailyEntity.date),
        )
        .toList();
  }

  /// Map local model to entity
  HappenActionEntity _mapLocalModelToEntity(HappenActionLocalModel localModel) {
    return HappenActionEntity(
      happen: localModel.happen,
      action: localModel.action,
    );
  }

  /// Map entity to local model
  HappenActionLocalModel _mapEntityToLocalModel(
    HappenActionEntity entity,
    DateTime date,
  ) {
    return HappenActionLocalModel(
      happen: entity.happen,
      action: entity.action,
      date: date,
    );
  }
}
