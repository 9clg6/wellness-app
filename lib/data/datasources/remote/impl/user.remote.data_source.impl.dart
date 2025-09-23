import 'package:welly/data/datasources/remote/user.remote.data_source.dart';
import 'package:welly/data/endpoint/user.endpoint.dart';
import 'package:welly/data/model/remote/user.remote.model.dart';

/// User Remote Data Source
final class UserRemoteDataSourceImpl extends UserRemoteDataSource {
  /// User Remote Data Source constructor
  UserRemoteDataSourceImpl({required UserEndpoint endpoint})
    : _endpoint = endpoint;

  /// Endpoint
  final UserEndpoint _endpoint;

  @override
  Future<UserRemoteModel> getUser() {
    return _endpoint.getUser();
  }
}
