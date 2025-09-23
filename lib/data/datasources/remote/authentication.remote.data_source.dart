import 'package:welly/data/model/remote/auth.remote.model.dart';
import 'package:welly/domain/params/login.param.dart';

/// Authentication Data Source
abstract class AuthenticationRemoteDataSource {
  /// login
  Future<AuthRemoteModel> login(LoginParam body);

  /// forget password
  Future<void> forgetPassword(LoginParam body);
}
