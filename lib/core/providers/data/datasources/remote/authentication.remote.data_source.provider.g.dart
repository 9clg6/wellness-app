// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authentication.remote.data_source.provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Authentication Data Source provider

@ProviderFor(authenticationRemoteDataSource)
const authenticationRemoteDataSourceProvider =
    AuthenticationRemoteDataSourceProvider._();

/// Authentication Data Source provider

final class AuthenticationRemoteDataSourceProvider
    extends
        $FunctionalProvider<
          AsyncValue<AuthenticationRemoteDataSource>,
          AuthenticationRemoteDataSource,
          FutureOr<AuthenticationRemoteDataSource>
        >
    with
        $FutureModifier<AuthenticationRemoteDataSource>,
        $FutureProvider<AuthenticationRemoteDataSource> {
  /// Authentication Data Source provider
  const AuthenticationRemoteDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'authenticationRemoteDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$authenticationRemoteDataSourceHash();

  @$internal
  @override
  $FutureProviderElement<AuthenticationRemoteDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<AuthenticationRemoteDataSource> create(Ref ref) {
    return authenticationRemoteDataSource(ref);
  }
}

String _$authenticationRemoteDataSourceHash() =>
    r'22bad71cf42f865bf217e6a590549324d92a9cbf';
