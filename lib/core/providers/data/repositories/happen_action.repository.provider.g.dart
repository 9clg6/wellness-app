// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'happen_action.repository.provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Provider for HappenActionRepository

@ProviderFor(happenActionRepository)
const happenActionRepositoryProvider = HappenActionRepositoryProvider._();

/// Provider for HappenActionRepository

final class HappenActionRepositoryProvider
    extends
        $FunctionalProvider<
          AsyncValue<HappenActionRepository>,
          HappenActionRepository,
          FutureOr<HappenActionRepository>
        >
    with
        $FutureModifier<HappenActionRepository>,
        $FutureProvider<HappenActionRepository> {
  /// Provider for HappenActionRepository
  const HappenActionRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'happenActionRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$happenActionRepositoryHash();

  @$internal
  @override
  $FutureProviderElement<HappenActionRepository> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<HappenActionRepository> create(Ref ref) {
    return happenActionRepository(ref);
  }
}

String _$happenActionRepositoryHash() =>
    r'd69806c4315cbd5f0523b0b5db44940f7e7a5d5d';
