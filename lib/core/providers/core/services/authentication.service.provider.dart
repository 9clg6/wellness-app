import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:welly/core/providers/foundation/services/authentication.service.dart';

part 'authentication.service.provider.g.dart';

/// Provider for the [AuthenticationService].
@riverpod
AuthenticationService authenticationService(Ref ref) {
  return AuthenticationService(FirebaseAuth.instance);
}
