import 'package:starter_kit/domain/entities/happen_action.entity.dart';
import 'package:starter_kit/domain/repositories/happen_action.repository.dart';
import 'package:starter_kit/foundation/interfaces/future.usecases.dart';

/// Use case to get all happen actions
class GetHappenActionsUseCase extends FutureUseCase<List<HappenActionEntity>> {
  /// Constructor
  GetHappenActionsUseCase({required HappenActionRepository repository})
    : _repository = repository;

  /// Repository
  final HappenActionRepository _repository;

  @override
  Future<List<HappenActionEntity>> invoke() {
    return _repository.getHappenActions();
  }
}
