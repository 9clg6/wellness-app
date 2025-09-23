import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:welly/core/providers/data/datasources/remote/ai.remote.data_source.provider.dart';
import 'package:welly/data/datasources/remote/impl/ai_analysis_remote.datasource.dart';
import 'package:welly/data/repositories/ai_analysis.repository.impl.dart';
import 'package:welly/domain/repositories/ai.repository.dart';

part 'ai.repository.provider.g.dart';

/// AI repository provider
@riverpod
Future<AIRepository> aiRepository(Ref ref) async {
  final AIRemoteDataSource aiRemoteDataSource = await ref.watch(
    aiRemoteDataSourceProvider.future,
  );

  return AIRepositoryImpl(aiRemoteDataSource);
}
