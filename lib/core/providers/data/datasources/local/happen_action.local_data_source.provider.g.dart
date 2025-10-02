// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'happen_action.local_data_source.provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Provider for HappenActionLocalDataSource

@ProviderFor(happenActionLocalDataSource)
const happenActionLocalDataSourceProvider =
    HappenActionLocalDataSourceProvider._();

/// Provider for HappenActionLocalDataSource

final class HappenActionLocalDataSourceProvider
    extends
        $FunctionalProvider<
          AsyncValue<HappenActionLocalDataSource>,
          HappenActionLocalDataSource,
          FutureOr<HappenActionLocalDataSource>
        >
    with
        $FutureModifier<HappenActionLocalDataSource>,
        $FutureProvider<HappenActionLocalDataSource> {
  /// Provider for HappenActionLocalDataSource
  const HappenActionLocalDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'happenActionLocalDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$happenActionLocalDataSourceHash();

  @$internal
  @override
  $FutureProviderElement<HappenActionLocalDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<HappenActionLocalDataSource> create(Ref ref) {
    return happenActionLocalDataSource(ref);
  }
}

String _$happenActionLocalDataSourceHash() =>
    r'a49bdbc2338754a9daa5a9175d821587c1811683';
