// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authentication.endpoint.provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Authentication Endpoint provider

@ProviderFor(authenticationEndpoint)
const authenticationEndpointProvider = AuthenticationEndpointProvider._();

/// Authentication Endpoint provider

final class AuthenticationEndpointProvider
    extends
        $FunctionalProvider<
          AsyncValue<AuthenticationEndpoint>,
          AuthenticationEndpoint,
          FutureOr<AuthenticationEndpoint>
        >
    with
        $FutureModifier<AuthenticationEndpoint>,
        $FutureProvider<AuthenticationEndpoint> {
  /// Authentication Endpoint provider
  const AuthenticationEndpointProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'authenticationEndpointProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$authenticationEndpointHash();

  @$internal
  @override
  $FutureProviderElement<AuthenticationEndpoint> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<AuthenticationEndpoint> create(Ref ref) {
    return authenticationEndpoint(ref);
  }
}

String _$authenticationEndpointHash() =>
    r'8b4ac4724d910e22e483f982ea76ebdfcbee5e64';
