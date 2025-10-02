import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:welly/core/providers/data/endpoints/authentication.endpoint.provider.dart';
import 'package:welly/data/datasources/remote/authentication.remote.data_source.dart';
import 'package:welly/data/datasources/remote/impl/authentication.remote.data_source.impl.dart';
import 'package:welly/data/endpoint/authentication.endpoint.dart';

part 'authentication.remote.data_source.provider.g.dart';

/// Authentication Data Source provider
@riverpod
Future<AuthenticationRemoteDataSource> authenticationRemoteDataSource(
  Ref ref,
) async {
  final AuthenticationEndpoint endpoint = await ref.watch(
    authenticationEndpointProvider.future,
  );

  return AuthenticationRemoteDataSourceImpl(endpoint: endpoint);
}
