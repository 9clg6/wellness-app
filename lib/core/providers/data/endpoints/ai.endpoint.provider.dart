import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:starter_kit/core/providers/data/clients/dio_client.provider.dart';
import 'package:starter_kit/data/clients/dio.client.dart';
import 'package:starter_kit/data/endpoint/ai_endpoint.dart';

part 'ai.endpoint.provider.g.dart';

/// AI endpoint provider
@riverpod
Future<AiEndpoint> aiEndpoint(Ref ref) async {
  final DioClient dio = await ref.watch(dioClientProvider.future);
  return AiEndpoint(dio);
}
