import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:welly/core/providers/core/services/authentication.service.provider.dart';
import 'package:welly/core/providers/foundation/services/authentication.service.dart';

part 'auth_state.provider.g.dart';

/// Provider that streams Firebase authentication state changes
@riverpod
Stream<User?> authState(Ref ref) async* {
  final AuthenticationService authService = await ref.watch(
    authenticationServiceProvider.future,
  );

  // Stream Firebase auth state changes directly from the service
  await for (final User? user in authService.authStateChanges) {
    yield user;
  }
}
