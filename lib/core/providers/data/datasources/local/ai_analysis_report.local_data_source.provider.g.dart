// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ai_analysis_report.local_data_source.provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Provider for AIAnalysisReportLocalDataSource

@ProviderFor(aiAnalysisReportLocalDataSource)
const aiAnalysisReportLocalDataSourceProvider =
    AiAnalysisReportLocalDataSourceProvider._();

/// Provider for AIAnalysisReportLocalDataSource

final class AiAnalysisReportLocalDataSourceProvider
    extends
        $FunctionalProvider<
          AsyncValue<AIAnalysisReportLocalDataSource>,
          AIAnalysisReportLocalDataSource,
          FutureOr<AIAnalysisReportLocalDataSource>
        >
    with
        $FutureModifier<AIAnalysisReportLocalDataSource>,
        $FutureProvider<AIAnalysisReportLocalDataSource> {
  /// Provider for AIAnalysisReportLocalDataSource
  const AiAnalysisReportLocalDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'aiAnalysisReportLocalDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$aiAnalysisReportLocalDataSourceHash();

  @$internal
  @override
  $FutureProviderElement<AIAnalysisReportLocalDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<AIAnalysisReportLocalDataSource> create(Ref ref) {
    return aiAnalysisReportLocalDataSource(ref);
  }
}

String _$aiAnalysisReportLocalDataSourceHash() =>
    r'ac2dabc684079b50cb970ebabd1e20b20338da1e';
