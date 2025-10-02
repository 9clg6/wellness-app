// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sembast.provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Provider for Sembast database

@ProviderFor(sembastDatabase)
const sembastDatabaseProvider = SembastDatabaseProvider._();

/// Provider for Sembast database

final class SembastDatabaseProvider
    extends
        $FunctionalProvider<AsyncValue<Database>, Database, FutureOr<Database>>
    with $FutureModifier<Database>, $FutureProvider<Database> {
  /// Provider for Sembast database
  const SembastDatabaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'sembastDatabaseProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$sembastDatabaseHash();

  @$internal
  @override
  $FutureProviderElement<Database> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<Database> create(Ref ref) {
    return sembastDatabase(ref);
  }
}

String _$sembastDatabaseHash() => r'e508b78cbbacc79b961a7998ca7c3f811024894f';
