// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authentication.local.data_source.provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Authentication Local Data Source provider

@ProviderFor(authenticationLocalDataSource)
const authenticationLocalDataSourceProvider =
    AuthenticationLocalDataSourceProvider._();

/// Authentication Local Data Source provider

final class AuthenticationLocalDataSourceProvider
    extends
        $FunctionalProvider<
          AsyncValue<AuthenticationLocalDataSource>,
          AuthenticationLocalDataSource,
          FutureOr<AuthenticationLocalDataSource>
        >
    with
        $FutureModifier<AuthenticationLocalDataSource>,
        $FutureProvider<AuthenticationLocalDataSource> {
  /// Authentication Local Data Source provider
  const AuthenticationLocalDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'authenticationLocalDataSourceProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$authenticationLocalDataSourceHash();

  @$internal
  @override
  $FutureProviderElement<AuthenticationLocalDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<AuthenticationLocalDataSource> create(Ref ref) {
    return authenticationLocalDataSource(ref);
  }
}

String _$authenticationLocalDataSourceHash() =>
    r'1dea9d8255ffbb8eb57c707bac6cb16a564b1168';
