// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.endpoint.provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// User endpoint provider

@ProviderFor(userEndpoint)
const userEndpointProvider = UserEndpointProvider._();

/// User endpoint provider

final class UserEndpointProvider
    extends
        $FunctionalProvider<
          AsyncValue<UserEndpoint>,
          UserEndpoint,
          FutureOr<UserEndpoint>
        >
    with $FutureModifier<UserEndpoint>, $FutureProvider<UserEndpoint> {
  /// User endpoint provider
  const UserEndpointProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'userEndpointProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$userEndpointHash();

  @$internal
  @override
  $FutureProviderElement<UserEndpoint> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<UserEndpoint> create(Ref ref) {
    return userEndpoint(ref);
  }
}

String _$userEndpointHash() => r'b628115b77a05625c023d02a7cab208b13415b8e';
