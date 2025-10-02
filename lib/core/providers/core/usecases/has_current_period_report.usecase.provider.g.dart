// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'has_current_period_report.usecase.provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Provider for HasCurrentPeriodReportUseCase

@ProviderFor(hasCurrentPeriodReportUseCase)
const hasCurrentPeriodReportUseCaseProvider =
    HasCurrentPeriodReportUseCaseProvider._();

/// Provider for HasCurrentPeriodReportUseCase

final class HasCurrentPeriodReportUseCaseProvider
    extends
        $FunctionalProvider<
          AsyncValue<HasCurrentPeriodReportUseCase>,
          HasCurrentPeriodReportUseCase,
          FutureOr<HasCurrentPeriodReportUseCase>
        >
    with
        $FutureModifier<HasCurrentPeriodReportUseCase>,
        $FutureProvider<HasCurrentPeriodReportUseCase> {
  /// Provider for HasCurrentPeriodReportUseCase
  const HasCurrentPeriodReportUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'hasCurrentPeriodReportUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$hasCurrentPeriodReportUseCaseHash();

  @$internal
  @override
  $FutureProviderElement<HasCurrentPeriodReportUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<HasCurrentPeriodReportUseCase> create(Ref ref) {
    return hasCurrentPeriodReportUseCase(ref);
  }
}

String _$hasCurrentPeriodReportUseCaseHash() =>
    r'8d1e9dfd11a1ee55a49538ea3df90c73857f452f';
