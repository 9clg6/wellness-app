import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:starter_kit/core/providers/data/endpoints/ai.endpoint.provider.dart';
import 'package:starter_kit/data/datasources/remote/impl/ai_analysis_remote.datasource.dart';
import 'package:starter_kit/data/endpoint/ai_endpoint.dart';

part 'ai.remote.data_source.provider.g.dart';

/// AI analysis remote data source provider
@riverpod
Future<AIRemoteDataSource> aiRemoteDataSource(Ref ref) async {
  final AiEndpoint aiEndpoint = await ref.watch(aiEndpointProvider.future);
  return AIRemoteDataSource(aiEndpoint: aiEndpoint);
}
