// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ai.endpoint.provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// AI endpoint provider

@ProviderFor(aiEndpoint)
const aiEndpointProvider = AiEndpointProvider._();

/// AI endpoint provider

final class AiEndpointProvider
    extends
        $FunctionalProvider<
          AsyncValue<AiEndpoint>,
          AiEndpoint,
          FutureOr<AiEndpoint>
        >
    with $FutureModifier<AiEndpoint>, $FutureProvider<AiEndpoint> {
  /// AI endpoint provider
  const AiEndpointProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'aiEndpointProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$aiEndpointHash();

  @$internal
  @override
  $FutureProviderElement<AiEndpoint> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<AiEndpoint> create(Ref ref) {
    return aiEndpoint(ref);
  }
}

String _$aiEndpointHash() => r'a66601b68ef22659dd7ccf755ea970e9aa86f7d5';
