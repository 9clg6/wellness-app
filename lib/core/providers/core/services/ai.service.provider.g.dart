// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ai.service.provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Ai service provider

@ProviderFor(aiService)
const aiServiceProvider = AiServiceProvider._();

/// Ai service provider

final class AiServiceProvider
    extends
        $FunctionalProvider<
          AsyncValue<AiService>,
          AiService,
          FutureOr<AiService>
        >
    with $FutureModifier<AiService>, $FutureProvider<AiService> {
  /// Ai service provider
  const AiServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'aiServiceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$aiServiceHash();

  @$internal
  @override
  $FutureProviderElement<AiService> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<AiService> create(Ref ref) {
    return aiService(ref);
  }
}

String _$aiServiceHash() => r'ca1005e6ea79983bbb5b068f0bb8dbf68225852c';
