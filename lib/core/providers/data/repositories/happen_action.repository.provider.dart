import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:starter_kit/core/providers/data/datasources/local/happen_action.local_data_source.provider.dart';
import 'package:starter_kit/data/datasources/local/happen_action.local_data_source.dart';
import 'package:starter_kit/data/repositories/happen_action.repository.dart';
import 'package:starter_kit/domain/repositories/happen_action.repository.dart';

part 'happen_action.repository.provider.g.dart';

/// Provider for HappenActionRepository
@riverpod
Future<HappenActionRepository> happenActionRepository(Ref ref) async {
  final HappenActionLocalDataSource happenActionLocalDataSource = await ref
      .watch(happenActionLocalDataSourceProvider.future);
  return HappenActionRepositoryImpl(
    localDataSource: happenActionLocalDataSource,
  );
}
