import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:welly/core/providers/core/services/ai.service.provider.dart';
import 'package:welly/core/providers/core/usecases/clear_happen_actions.usecase.provider.dart';
import 'package:welly/core/providers/core/usecases/delete_happen_action_by_date.usecase.provider.dart';
import 'package:welly/core/providers/core/usecases/get_happen_actions.usecase.provider.dart';
import 'package:welly/core/providers/core/usecases/save_happen_action.usecase.provider.dart';
import 'package:welly/core/providers/core/usecases/save_happen_actions.usecase.provider.dart';
import 'package:welly/core/providers/foundation/services/happen_action.service.dart';

part 'happen_action.service.provider.g.dart';

/// Provider pour HappenActionService
@riverpod
Future<HappenActionService> happenActionService(Ref ref) async {
  final HappenActionService service = HappenActionService(
    getHappenActionsUseCase: await ref.watch(
      getHappenActionsUseCaseProvider.future,
    ),
    saveHappenActionUseCase: await ref.watch(
      saveHappenActionUseCaseProvider.future,
    ),
    saveHappenActionsUseCase: await ref.watch(
      saveHappenActionsUseCaseProvider.future,
    ),
    clearHappenActionsUseCase: await ref.watch(
      clearHappenActionsUseCaseProvider.future,
    ),
    deleteHappenActionByDateUseCase: await ref.watch(
      deleteHappenActionByDateUseCaseProvider.future,
    ),
    aiService: await ref.watch(aiServiceProvider.future),
  );

  ref.onDispose(service.dispose);
  return service;
}
