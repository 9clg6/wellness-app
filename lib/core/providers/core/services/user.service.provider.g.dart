// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.service.provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// User service provider

@ProviderFor(userService)
const userServiceProvider = UserServiceProvider._();

/// User service provider

final class UserServiceProvider
    extends
        $FunctionalProvider<
          AsyncValue<UserService>,
          UserService,
          FutureOr<UserService>
        >
    with $FutureModifier<UserService>, $FutureProvider<UserService> {
  /// User service provider
  const UserServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'userServiceProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$userServiceHash();

  @$internal
  @override
  $FutureProviderElement<UserService> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<UserService> create(Ref ref) {
    return userService(ref);
  }
}

String _$userServiceHash() => r'44946e369356eb815875e97d804b550b19f6f091';
