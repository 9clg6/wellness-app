import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:welly/core/providers/data/clients/dio_client.provider.dart';
import 'package:welly/data/clients/dio.client.dart';
import 'package:welly/data/endpoint/user.endpoint.dart';

part 'user.endpoint.provider.g.dart';

/// User endpoint provider
@riverpod
Future<UserEndpoint> userEndpoint(Ref ref) async {
  final DioClient dio = await ref.watch(dioClientProvider.future);

  return UserEndpoint(dio);
}
