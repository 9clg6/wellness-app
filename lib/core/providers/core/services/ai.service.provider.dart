import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:welly/core/providers/core/usecases/analyze_with_ai.usecase.provider.dart';
import 'package:welly/core/providers/core/usecases/get_current_period_report.usecase.provider.dart';
import 'package:welly/core/providers/core/usecases/save_ai_analysis_report.usecase.provider.dart';
import 'package:welly/core/providers/foundation/services/ai.service.dart';
import 'package:welly/domain/usecases/analyze_with_ai.usecase.dart';
import 'package:welly/domain/usecases/get_current_period_report.usecase.dart';
import 'package:welly/domain/usecases/save_ai_analysis_report.usecase.dart';

part 'ai.service.provider.g.dart';

/// Ai service provider
@riverpod
Future<AiService> aiService(Ref ref) async {
  final AnalyzeWithAIUseCase analyzeWithAIUseCase = await ref.watch(
    analyzeWithAIUseCaseProvider.future,
  );

  final SaveAIAnalysisReportUseCase saveAIAnalysisReportUseCase = await ref
      .watch(saveAIAnalysisReportUseCaseProvider.future);

  final GetCurrentPeriodReportUseCase getCurrentPeriodReportUseCase = await ref
      .watch(getCurrentPeriodReportUseCaseProvider.future);

  final AiService aiService = AiService(
    analyzeWithAIUseCase,
    saveAIAnalysisReportUseCase,
    getCurrentPeriodReportUseCase,
  );

  // Initialize the service
  await aiService.init();

  return aiService;
}
