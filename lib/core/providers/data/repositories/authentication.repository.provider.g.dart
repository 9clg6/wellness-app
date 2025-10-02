// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authentication.repository.provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Authentication Repository provider

@ProviderFor(authenticationRepository)
const authenticationRepositoryProvider = AuthenticationRepositoryProvider._();

/// Authentication Repository provider

final class AuthenticationRepositoryProvider
    extends
        $FunctionalProvider<
          AsyncValue<AuthenticationRepository>,
          AuthenticationRepository,
          FutureOr<AuthenticationRepository>
        >
    with
        $FutureModifier<AuthenticationRepository>,
        $FutureProvider<AuthenticationRepository> {
  /// Authentication Repository provider
  const AuthenticationRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'authenticationRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$authenticationRepositoryHash();

  @$internal
  @override
  $FutureProviderElement<AuthenticationRepository> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<AuthenticationRepository> create(Ref ref) {
    return authenticationRepository(ref);
  }
}

String _$authenticationRepositoryHash() =>
    r'd0e6f3ca853566322f553ba3dbce881960a860b4';
