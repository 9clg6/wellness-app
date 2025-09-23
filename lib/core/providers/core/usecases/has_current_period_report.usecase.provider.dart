import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:welly/core/providers/data/datasources/local/ai_analysis_report.local_data_source.provider.dart';
import 'package:welly/domain/usecases/has_current_period_report.usecase.dart';

part 'has_current_period_report.usecase.provider.g.dart';

/// Provider for HasCurrentPeriodReportUseCase
@riverpod
Future<HasCurrentPeriodReportUseCase> hasCurrentPeriodReportUseCase(
  Ref ref,
) async {
  return HasCurrentPeriodReportUseCase(
    localDataSource: await ref.watch(
      aiAnalysisReportLocalDataSourceProvider.future,
    ),
  );
}
