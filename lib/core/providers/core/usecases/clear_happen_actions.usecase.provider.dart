import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:welly/core/providers/data/repositories/happen_action.repository.provider.dart';
import 'package:welly/domain/repositories/happen_action.repository.dart';
import 'package:welly/domain/usecases/clear_happen_actions.usecase.dart';

part 'clear_happen_actions.usecase.provider.g.dart';

/// Provider for ClearHappenActionsUseCase
@riverpod
Future<ClearHappenActionsUseCase> clearHappenActionsUseCase(Ref ref) async {
  final HappenActionRepository repository = await ref.watch(
    happenActionRepositoryProvider.future,
  );
  return ClearHappenActionsUseCase(repository: repository);
}
