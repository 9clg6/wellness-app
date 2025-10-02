// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_current_period_report.usecase.provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Provider for GetCurrentPeriodReportUseCase

@ProviderFor(getCurrentPeriodReportUseCase)
const getCurrentPeriodReportUseCaseProvider =
    GetCurrentPeriodReportUseCaseProvider._();

/// Provider for GetCurrentPeriodReportUseCase

final class GetCurrentPeriodReportUseCaseProvider
    extends
        $FunctionalProvider<
          AsyncValue<GetCurrentPeriodReportUseCase>,
          GetCurrentPeriodReportUseCase,
          FutureOr<GetCurrentPeriodReportUseCase>
        >
    with
        $FutureModifier<GetCurrentPeriodReportUseCase>,
        $FutureProvider<GetCurrentPeriodReportUseCase> {
  /// Provider for GetCurrentPeriodReportUseCase
  const GetCurrentPeriodReportUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getCurrentPeriodReportUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getCurrentPeriodReportUseCaseHash();

  @$internal
  @override
  $FutureProviderElement<GetCurrentPeriodReportUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<GetCurrentPeriodReportUseCase> create(Ref ref) {
    return getCurrentPeriodReportUseCase(ref);
  }
}

String _$getCurrentPeriodReportUseCaseHash() =>
    r'b6e552a46fe40cb8e5af5b8e860feb904e2c21f0';
