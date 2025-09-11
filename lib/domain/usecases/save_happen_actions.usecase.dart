import 'package:starter_kit/domain/entities/happen_action.entity.dart';
import 'package:starter_kit/domain/repositories/happen_action.repository.dart';
import 'package:starter_kit/foundation/interfaces/future.usecases.dart';

/// Use case to save all happen actions
class SaveHappenActionsUseCase
    extends FutureUseCaseWithParams<void, List<HappenActionEntity>> {
  /// Constructor
  SaveHappenActionsUseCase({required HappenActionRepository repository})
    : _repository = repository;

  /// Repository
  final HappenActionRepository _repository;

  @override
  Future<void> invoke(List<HappenActionEntity> params) {
    return _repository.saveHappenActions(params);
  }
}
