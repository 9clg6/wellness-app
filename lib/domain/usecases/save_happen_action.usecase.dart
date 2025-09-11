import 'package:starter_kit/domain/entities/happen_action.entity.dart';
import 'package:starter_kit/domain/repositories/happen_action.repository.dart';
import 'package:starter_kit/foundation/interfaces/future.usecases.dart';

/// Use case to save happen action
class SaveHappenActionUseCase
    extends FutureUseCaseWithParams<void, HappenActionEntity> {
  /// Constructor
  SaveHappenActionUseCase({required HappenActionRepository repository})
    : _repository = repository;

  /// Repository
  final HappenActionRepository _repository;

  @override
  Future<void> invoke(HappenActionEntity params) {
    return _repository.saveHappenAction(params);
  }
}
