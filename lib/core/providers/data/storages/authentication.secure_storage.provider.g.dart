// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authentication.secure_storage.provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Authentication Secure Storage provider

@ProviderFor(authenticationSecureStorage)
const authenticationSecureStorageProvider =
    AuthenticationSecureStorageProvider._();

/// Authentication Secure Storage provider

final class AuthenticationSecureStorageProvider
    extends
        $FunctionalProvider<
          AsyncValue<AuthenticationSecureStorage>,
          AuthenticationSecureStorage,
          FutureOr<AuthenticationSecureStorage>
        >
    with
        $FutureModifier<AuthenticationSecureStorage>,
        $FutureProvider<AuthenticationSecureStorage> {
  /// Authentication Secure Storage provider
  const AuthenticationSecureStorageProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'authenticationSecureStorageProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$authenticationSecureStorageHash();

  @$internal
  @override
  $FutureProviderElement<AuthenticationSecureStorage> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<AuthenticationSecureStorage> create(Ref ref) {
    return authenticationSecureStorage(ref);
  }
}

String _$authenticationSecureStorageHash() =>
    r'fcb3cac5cc84df816dcf6421874e469ebde043ef';
