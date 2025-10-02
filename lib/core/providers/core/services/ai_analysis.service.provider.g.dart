// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ai_analysis.service.provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Provider for AI analysis service

@ProviderFor(aiAnalysisService)
const aiAnalysisServiceProvider = AiAnalysisServiceProvider._();

/// Provider for AI analysis service

final class AiAnalysisServiceProvider
    extends
        $FunctionalProvider<
          AsyncValue<AiService>,
          AiService,
          FutureOr<AiService>
        >
    with $FutureModifier<AiService>, $FutureProvider<AiService> {
  /// Provider for AI analysis service
  const AiAnalysisServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'aiAnalysisServiceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$aiAnalysisServiceHash();

  @$internal
  @override
  $FutureProviderElement<AiService> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<AiService> create(Ref ref) {
    return aiAnalysisService(ref);
  }
}

String _$aiAnalysisServiceHash() => r'645b4e07aec7fbe724cb736dad76bf7024320d51';
