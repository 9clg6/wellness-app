// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'save_ai_analysis_report.usecase.provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Provider for SaveAIAnalysisReportUseCase

@ProviderFor(saveAIAnalysisReportUseCase)
const saveAIAnalysisReportUseCaseProvider =
    SaveAIAnalysisReportUseCaseProvider._();

/// Provider for SaveAIAnalysisReportUseCase

final class SaveAIAnalysisReportUseCaseProvider
    extends
        $FunctionalProvider<
          AsyncValue<SaveAIAnalysisReportUseCase>,
          SaveAIAnalysisReportUseCase,
          FutureOr<SaveAIAnalysisReportUseCase>
        >
    with
        $FutureModifier<SaveAIAnalysisReportUseCase>,
        $FutureProvider<SaveAIAnalysisReportUseCase> {
  /// Provider for SaveAIAnalysisReportUseCase
  const SaveAIAnalysisReportUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'saveAIAnalysisReportUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$saveAIAnalysisReportUseCaseHash();

  @$internal
  @override
  $FutureProviderElement<SaveAIAnalysisReportUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<SaveAIAnalysisReportUseCase> create(Ref ref) {
    return saveAIAnalysisReportUseCase(ref);
  }
}

String _$saveAIAnalysisReportUseCaseHash() =>
    r'f0d55f242f345fed1c7ce592198b48b3e6a972f7';
