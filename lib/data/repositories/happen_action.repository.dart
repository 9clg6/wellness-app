import 'package:starter_kit/data/datasources/local/happen_action.local_data_source.dart';
import 'package:starter_kit/data/model/happen_action.local_model.dart';
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
  Future<List<HappenActionEntity>> getHappenActions() async {
    final List<HappenActionLocalModel> localModels = await _localDataSource
        .getHappenActions();
    return localModels.map(_mapLocalModelToEntity).toList();
  }

  @override
  Future<void> saveHappenAction(HappenActionEntity happenAction) async {
    final HappenActionLocalModel localModel = _mapEntityToLocalModel(
      happenAction,
    );
    await _localDataSource.saveHappenAction(localModel);
  }

  @override
  Future<void> saveHappenActions(List<HappenActionEntity> happenActions) async {
    final List<HappenActionLocalModel> localModels = happenActions
        .map(_mapEntityToLocalModel)
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

  /// Map local model to entity
  HappenActionEntity _mapLocalModelToEntity(HappenActionLocalModel localModel) {
    return HappenActionEntity(
      happen: localModel.happen,
      action: localModel.action,
      date: localModel.date,
    );
  }

  /// Map entity to local model
  HappenActionLocalModel _mapEntityToLocalModel(HappenActionEntity entity) {
    return HappenActionLocalModel(
      happen: entity.happen,
      action: entity.action,
      date: entity.date,
    );
  }
}
