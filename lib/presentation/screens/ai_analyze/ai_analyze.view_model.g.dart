// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ai_analyze.view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Ai analyze view model

@ProviderFor(AiAnalyze)
const aiAnalyzeProvider = AiAnalyzeProvider._();

/// Ai analyze view model
final class AiAnalyzeProvider
    extends $AsyncNotifierProvider<AiAnalyze, AiAnalyzeState> {
  /// Ai analyze view model
  const AiAnalyzeProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'aiAnalyzeProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$aiAnalyzeHash();

  @$internal
  @override
  AiAnalyze create() => AiAnalyze();
}

String _$aiAnalyzeHash() => r'f9e7c04436b20e51cc1d675444418af709f4aa85';

/// Ai analyze view model

abstract class _$AiAnalyze extends $AsyncNotifier<AiAnalyzeState> {
  FutureOr<AiAnalyzeState> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<AiAnalyzeState>, AiAnalyzeState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<AiAnalyzeState>, AiAnalyzeState>,
              AsyncValue<AiAnalyzeState>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
