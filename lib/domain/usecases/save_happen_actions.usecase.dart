import 'package:welly/domain/entities/daily_happen_action.entity.dart';
import 'package:welly/domain/repositories/happen_action.repository.dart';
import 'package:welly/foundation/interfaces/future.usecases.dart';

/// Use case to save all daily happen actions
class SaveHappenActionsUseCase
    extends FutureUseCaseWithParams<void, List<DailyHappenActionEntity>> {
  /// Constructor
  SaveHappenActionsUseCase({required HappenActionRepository repository})
    : _repository = repository;

  /// Repository
  final HappenActionRepository _repository;

  @override
  Future<void> invoke(List<DailyHappenActionEntity> params) {
    return _repository.saveHappenActions(params);
  }
}
