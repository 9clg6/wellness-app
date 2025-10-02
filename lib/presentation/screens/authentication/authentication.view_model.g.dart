// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authentication.view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Authentication View Model

@ProviderFor(Authentication)
const authenticationProvider = AuthenticationProvider._();

/// Authentication View Model
final class AuthenticationProvider
    extends $AsyncNotifierProvider<Authentication, AuthenticationState> {
  /// Authentication View Model
  const AuthenticationProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'authenticationProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$authenticationHash();

  @$internal
  @override
  Authentication create() => Authentication();
}

String _$authenticationHash() => r'568e3e541ed12ba849b1cf0c2f5ed36c5b384248';

/// Authentication View Model

abstract class _$Authentication extends $AsyncNotifier<AuthenticationState> {
  FutureOr<AuthenticationState> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref as $Ref<AsyncValue<AuthenticationState>, AuthenticationState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<AuthenticationState>, AuthenticationState>,
              AsyncValue<AuthenticationState>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
