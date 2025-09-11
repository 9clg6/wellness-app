import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:starter_kit/core/providers/data/repositories/happen_action.repository.provider.dart';
import 'package:starter_kit/domain/repositories/happen_action.repository.dart';
import 'package:starter_kit/domain/usecases/save_happen_action.usecase.dart';

part 'save_happen_action.usecase.provider.g.dart';

/// Provider for SaveHappenActionUseCase
@riverpod
Future<SaveHappenActionUseCase> saveHappenActionUseCase(Ref ref) async {
  final HappenActionRepository repository = await ref.watch(
    happenActionRepositoryProvider.future,
  );
  return SaveHappenActionUseCase(repository: repository);
}
