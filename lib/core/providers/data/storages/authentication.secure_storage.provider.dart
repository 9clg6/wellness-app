import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:welly/data/storages/authentication.secure_storage.dart';

part 'authentication.secure_storage.provider.g.dart';

/// Authentication Secure Storage provider
@Riverpod(keepAlive: true)
Future<AuthenticationSecureStorage> authenticationSecureStorage(Ref ref) async {
  return AuthenticationSecureStorage.inject();
}
