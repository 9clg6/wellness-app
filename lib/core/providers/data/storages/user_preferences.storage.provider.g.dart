// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_preferences.storage.provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// User preferences storage provider

@ProviderFor(userPreferencesStorage)
const userPreferencesStorageProvider = UserPreferencesStorageProvider._();

/// User preferences storage provider

final class UserPreferencesStorageProvider
    extends
        $FunctionalProvider<
          UserPreferencesStorage,
          UserPreferencesStorage,
          UserPreferencesStorage
        >
    with $Provider<UserPreferencesStorage> {
  /// User preferences storage provider
  const UserPreferencesStorageProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'userPreferencesStorageProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$userPreferencesStorageHash();

  @$internal
  @override
  $ProviderElement<UserPreferencesStorage> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  UserPreferencesStorage create(Ref ref) {
    return userPreferencesStorage(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(UserPreferencesStorage value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<UserPreferencesStorage>(value),
    );
  }
}

String _$userPreferencesStorageHash() =>
    r'73c1219cd24df87f2b2f0ab19e449dff1e7e526f';
