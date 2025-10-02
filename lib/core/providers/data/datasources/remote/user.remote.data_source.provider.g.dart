// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.remote.data_source.provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// User remote data source provider

@ProviderFor(userRemoteDataSource)
const userRemoteDataSourceProvider = UserRemoteDataSourceProvider._();

/// User remote data source provider

final class UserRemoteDataSourceProvider
    extends
        $FunctionalProvider<
          AsyncValue<UserRemoteDataSource>,
          UserRemoteDataSource,
          FutureOr<UserRemoteDataSource>
        >
    with
        $FutureModifier<UserRemoteDataSource>,
        $FutureProvider<UserRemoteDataSource> {
  /// User remote data source provider
  const UserRemoteDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'userRemoteDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$userRemoteDataSourceHash();

  @$internal
  @override
  $FutureProviderElement<UserRemoteDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<UserRemoteDataSource> create(Ref ref) {
    return userRemoteDataSource(ref);
  }
}

String _$userRemoteDataSourceHash() =>
    r'e137d7475d8afab946fc400117c30db9732a2a1e';
