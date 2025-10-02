// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ai.remote.data_source.provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// AI analysis remote data source provider

@ProviderFor(aiRemoteDataSource)
const aiRemoteDataSourceProvider = AiRemoteDataSourceProvider._();

/// AI analysis remote data source provider

final class AiRemoteDataSourceProvider
    extends
        $FunctionalProvider<
          AsyncValue<AIRemoteDataSource>,
          AIRemoteDataSource,
          FutureOr<AIRemoteDataSource>
        >
    with
        $FutureModifier<AIRemoteDataSource>,
        $FutureProvider<AIRemoteDataSource> {
  /// AI analysis remote data source provider
  const AiRemoteDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'aiRemoteDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$aiRemoteDataSourceHash();

  @$internal
  @override
  $FutureProviderElement<AIRemoteDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<AIRemoteDataSource> create(Ref ref) {
    return aiRemoteDataSource(ref);
  }
}

String _$aiRemoteDataSourceHash() =>
    r'b22c3b504ecf2c9a050d7bfb64cc9c5b6d743a1b';
