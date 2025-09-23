import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:welly/core/providers/data/datasources/local/ai_analysis_report.local_data_source.provider.dart';
import 'package:welly/domain/usecases/save_ai_analysis_report.usecase.dart';

part 'save_ai_analysis_report.usecase.provider.g.dart';

/// Provider for SaveAIAnalysisReportUseCase
@riverpod
Future<SaveAIAnalysisReportUseCase> saveAIAnalysisReportUseCase(Ref ref) async {
  return SaveAIAnalysisReportUseCase(
    localDataSource: await ref.watch(
      aiAnalysisReportLocalDataSourceProvider.future,
    ),
  );
}
