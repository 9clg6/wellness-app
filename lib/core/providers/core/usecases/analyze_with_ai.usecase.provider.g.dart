// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analyze_with_ai.usecase.provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Provider for analyze with AI use case

@ProviderFor(analyzeWithAIUseCase)
const analyzeWithAIUseCaseProvider = AnalyzeWithAIUseCaseProvider._();

/// Provider for analyze with AI use case

final class AnalyzeWithAIUseCaseProvider
    extends
        $FunctionalProvider<
          AsyncValue<AnalyzeWithAIUseCase>,
          AnalyzeWithAIUseCase,
          FutureOr<AnalyzeWithAIUseCase>
        >
    with
        $FutureModifier<AnalyzeWithAIUseCase>,
        $FutureProvider<AnalyzeWithAIUseCase> {
  /// Provider for analyze with AI use case
  const AnalyzeWithAIUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'analyzeWithAIUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$analyzeWithAIUseCaseHash();

  @$internal
  @override
  $FutureProviderElement<AnalyzeWithAIUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<AnalyzeWithAIUseCase> create(Ref ref) {
    return analyzeWithAIUseCase(ref);
  }
}

String _$analyzeWithAIUseCaseHash() =>
    r'6b607249fddb375a23b0f47b730b640e0b20e37a';
