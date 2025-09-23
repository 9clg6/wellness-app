import 'package:welly/domain/repositories/happen_action.repository.dart';
import 'package:welly/foundation/interfaces/future.usecases.dart';

/// Use case to clear all happen actions
class ClearHappenActionsUseCase extends FutureUseCase<void> {
  /// Constructor
  ClearHappenActionsUseCase({required HappenActionRepository repository})
    : _repository = repository;

  /// Repository
  final HappenActionRepository _repository;

  @override
  Future<void> invoke() {
    return _repository.clearHappenActions();
  }
}
