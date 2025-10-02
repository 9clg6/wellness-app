// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.repository.provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// User repository provider

@ProviderFor(userRepository)
const userRepositoryProvider = UserRepositoryProvider._();

/// User repository provider

final class UserRepositoryProvider
    extends
        $FunctionalProvider<
          AsyncValue<UserRepository>,
          UserRepository,
          FutureOr<UserRepository>
        >
    with $FutureModifier<UserRepository>, $FutureProvider<UserRepository> {
  /// User repository provider
  const UserRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'userRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$userRepositoryHash();

  @$internal
  @override
  $FutureProviderElement<UserRepository> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<UserRepository> create(Ref ref) {
    return userRepository(ref);
  }
}

String _$userRepositoryHash() => r'39da4666f3393dc527fb2b186ad81009d05e12c6';
