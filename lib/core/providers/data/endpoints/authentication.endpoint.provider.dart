import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:welly/core/providers/data/clients/dio_authentication.client.provider.dart';
import 'package:welly/data/clients/dio.authentication.client.dart';
import 'package:welly/data/endpoint/authentication.endpoint.dart';

part 'authentication.endpoint.provider.g.dart';

/// Authentication Endpoint provider
@riverpod
Future<AuthenticationEndpoint> authenticationEndpoint(Ref ref) async {
  final DioAuthenticationClient dio = await ref.watch(
    dioAuthenticationClientProvider.future,
  );

  return AuthenticationEndpoint(dio);
}
