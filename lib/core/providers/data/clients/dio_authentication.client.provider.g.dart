// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dio_authentication.client.provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Dio client provider

@ProviderFor(dioAuthenticationClient)
const dioAuthenticationClientProvider = DioAuthenticationClientProvider._();

/// Dio client provider

final class DioAuthenticationClientProvider
    extends
        $FunctionalProvider<
          AsyncValue<DioAuthenticationClient>,
          DioAuthenticationClient,
          FutureOr<DioAuthenticationClient>
        >
    with
        $FutureModifier<DioAuthenticationClient>,
        $FutureProvider<DioAuthenticationClient> {
  /// Dio client provider
  const DioAuthenticationClientProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'dioAuthenticationClientProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$dioAuthenticationClientHash();

  @$internal
  @override
  $FutureProviderElement<DioAuthenticationClient> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<DioAuthenticationClient> create(Ref ref) {
    return dioAuthenticationClient(ref);
  }
}

String _$dioAuthenticationClientHash() =>
    r'692bc898485d7ab16943ccc0c9a32a24473f3c72';
