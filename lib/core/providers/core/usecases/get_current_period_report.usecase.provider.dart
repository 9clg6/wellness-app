import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:welly/core/providers/data/datasources/local/ai_analysis_report.local_data_source.provider.dart';
import 'package:welly/domain/usecases/get_current_period_report.usecase.dart';

part 'get_current_period_report.usecase.provider.g.dart';

/// Provider for GetCurrentPeriodReportUseCase
@riverpod
Future<GetCurrentPeriodReportUseCase> getCurrentPeriodReportUseCase(
  Ref ref,
) async {
  return GetCurrentPeriodReportUseCase(
    localDataSource: await ref.watch(
      aiAnalysisReportLocalDataSourceProvider.future,
    ),
  );
}
