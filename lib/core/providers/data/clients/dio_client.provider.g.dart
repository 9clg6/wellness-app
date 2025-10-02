// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dio_client.provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Dio client provider

@ProviderFor(dioClient)
const dioClientProvider = DioClientProvider._();

/// Dio client provider

final class DioClientProvider
    extends
        $FunctionalProvider<
          AsyncValue<DioClient>,
          DioClient,
          FutureOr<DioClient>
        >
    with $FutureModifier<DioClient>, $FutureProvider<DioClient> {
  /// Dio client provider
  const DioClientProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'dioClientProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$dioClientHash();

  @$internal
  @override
  $FutureProviderElement<DioClient> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<DioClient> create(Ref ref) {
    return dioClient(ref);
  }
}

String _$dioClientHash() => r'83b33be200e275d0df388d0b297bc120e8425fdd';
