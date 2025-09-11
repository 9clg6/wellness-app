import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:starter_kit/core/providers/data/repositories/happen_action.repository.provider.dart';
import 'package:starter_kit/domain/repositories/happen_action.repository.dart';
import 'package:starter_kit/domain/usecases/save_happen_actions.usecase.dart';

part 'save_happen_actions.usecase.provider.g.dart';

/// Provider for SaveHappenActionsUseCase
@riverpod
Future<SaveHappenActionsUseCase> saveHappenActionsUseCase(Ref ref) async {
  final HappenActionRepository repository = await ref.watch(
    happenActionRepositoryProvider.future,
  );
  return SaveHappenActionsUseCase(repository: repository);
}
