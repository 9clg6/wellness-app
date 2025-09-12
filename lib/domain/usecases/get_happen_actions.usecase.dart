import 'package:starter_kit/domain/entities/daily_happen_action.entity.dart';
import 'package:starter_kit/domain/repositories/happen_action.repository.dart';
import 'package:starter_kit/foundation/interfaces/future.usecases.dart';

/// Use case to get all daily happen actions
class GetHappenActionsUseCase
    extends FutureUseCase<List<DailyHappenActionEntity>> {
  /// Constructor
  GetHappenActionsUseCase({required HappenActionRepository repository})
    : _repository = repository;

  /// Repository
  final HappenActionRepository _repository;

  @override
  Future<List<DailyHappenActionEntity>> invoke() {
    return _repository.getHappenActions();
  }
}
