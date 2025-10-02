// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authentication.service.provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Provider for the [AuthenticationService].

@ProviderFor(authenticationService)
const authenticationServiceProvider = AuthenticationServiceProvider._();

/// Provider for the [AuthenticationService].

final class AuthenticationServiceProvider
    extends
        $FunctionalProvider<
          AsyncValue<AuthenticationService>,
          AuthenticationService,
          FutureOr<AuthenticationService>
        >
    with
        $FutureModifier<AuthenticationService>,
        $FutureProvider<AuthenticationService> {
  /// Provider for the [AuthenticationService].
  const AuthenticationServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'authenticationServiceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$authenticationServiceHash();

  @$internal
  @override
  $FutureProviderElement<AuthenticationService> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<AuthenticationService> create(Ref ref) {
    return authenticationService(ref);
  }
}

String _$authenticationServiceHash() =>
    r'aa399a25ddd5163f100de973d0c4e753a3faa24d';
