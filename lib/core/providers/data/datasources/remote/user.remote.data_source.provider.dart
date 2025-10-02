import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:welly/core/providers/data/endpoints/user.endpoint.provider.dart';
import 'package:welly/data/datasources/remote/impl/user.remote.data_source.impl.dart';
import 'package:welly/data/datasources/remote/user.remote.data_source.dart';
import 'package:welly/data/endpoint/user.endpoint.dart';

part 'user.remote.data_source.provider.g.dart';

/// User remote data source provider
@riverpod
Future<UserRemoteDataSource> userRemoteDataSource(Ref ref) async {
  final UserEndpoint endpoint = await ref.watch(userEndpointProvider.future);

  return UserRemoteDataSourceImpl(endpoint: endpoint);
}
