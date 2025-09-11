import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:starter_kit/core/providers/data/repositories/happen_action.repository.provider.dart';
import 'package:starter_kit/domain/repositories/happen_action.repository.dart';
import 'package:starter_kit/domain/usecases/delete_happen_action_by_date.usecase.dart';

part 'delete_happen_action_by_date.usecase.provider.g.dart';

/// Provider for DeleteHappenActionByDateUseCase
@riverpod
Future<DeleteHappenActionByDateUseCase> deleteHappenActionByDateUseCase(
  Ref ref,
) async {
  final HappenActionRepository repository = await ref.watch(
    happenActionRepositoryProvider.future,
  );
  return DeleteHappenActionByDateUseCase(repository: repository);
}
