import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:welly/core/providers/config/appconfig.provider.dart';
import 'package:welly/data/clients/dio.authentication.client.dart';
import 'package:welly/foundation/config/app_config.dart';

part 'dio_authentication.client.provider.g.dart';

/// Dio client provider
@riverpod
Future<DioAuthenticationClient> dioAuthenticationClient(Ref ref) async {
  final AppConfig appConfig = ref.watch(appConfigProvider);

  return DioAuthenticationClient.basic(appConfig);
}
