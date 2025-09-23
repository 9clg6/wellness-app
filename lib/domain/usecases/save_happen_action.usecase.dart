import 'package:welly/domain/entities/daily_happen_action.entity.dart';
import 'package:welly/domain/repositories/happen_action.repository.dart';
import 'package:welly/foundation/interfaces/future.usecases.dart';

/// Use case to save daily happen action
class SaveHappenActionUseCase
    extends FutureUseCaseWithParams<void, DailyHappenActionEntity> {
  /// Constructor
  SaveHappenActionUseCase({required HappenActionRepository repository})
    : _repository = repository;

  /// Repository
  final HappenActionRepository _repository;

  @override
  Future<void> invoke(DailyHappenActionEntity params) {
    return _repository.saveHappenAction(params);
  }
}
