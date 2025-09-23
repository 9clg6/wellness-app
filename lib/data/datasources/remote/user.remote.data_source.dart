import 'package:welly/data/model/remote/user.remote.model.dart';

/// User Remote Data Source
abstract class UserRemoteDataSource {
  /// get user
  Future<UserRemoteModel> getUser();
}
