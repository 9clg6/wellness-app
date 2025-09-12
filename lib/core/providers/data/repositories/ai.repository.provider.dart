import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:starter_kit/core/providers/data/datasources/remote/ai.remote.data_source.provider.dart';
import 'package:starter_kit/data/datasources/remote/impl/ai_analysis_remote.datasource.dart';
import 'package:starter_kit/data/repositories/ai_analysis.repository.impl.dart';
import 'package:starter_kit/domain/repositories/ai.repository.dart';

part 'ai.repository.provider.g.dart';

/// AI repository provider
@riverpod
Future<AIRepository> aiRepository(Ref ref) async {
  final AIRemoteDataSource aiRemoteDataSource = await ref.watch(
    aiRemoteDataSourceProvider.future,
  );

  return AIRepositoryImpl(aiRemoteDataSource);
}
