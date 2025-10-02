import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:welly/core/providers/data/endpoints/ai.endpoint.provider.dart';
import 'package:welly/data/datasources/remote/impl/ai_analysis_remote.datasource.dart';
import 'package:welly/data/endpoint/ai_endpoint.dart';

part 'ai.remote.data_source.provider.g.dart';

/// AI analysis remote data source provider
@riverpod
Future<AIRemoteDataSource> aiRemoteDataSource(Ref ref) async {
  final AiEndpoint aiEndpoint = await ref.watch(aiEndpointProvider.future);
  return AIRemoteDataSource(aiEndpoint: aiEndpoint);
}
