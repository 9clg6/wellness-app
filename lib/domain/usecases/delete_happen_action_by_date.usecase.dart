import 'package:starter_kit/domain/repositories/happen_action.repository.dart';
import 'package:starter_kit/foundation/interfaces/future.usecases.dart';

/// Use case to delete happen action by date
class DeleteHappenActionByDateUseCase
    extends FutureUseCaseWithParams<void, DateTime> {
  /// Constructor
  DeleteHappenActionByDateUseCase({required HappenActionRepository repository})
    : _repository = repository;

  /// Repository
  final HappenActionRepository _repository;

  @override
  Future<void> invoke(DateTime params) {
    return _repository.deleteHappenActionByDate(params);
  }
}
