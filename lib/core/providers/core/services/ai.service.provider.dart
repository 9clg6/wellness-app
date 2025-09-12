import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:starter_kit/core/providers/core/usecases/analyze_with_ai.usecase.provider.dart';
import 'package:starter_kit/core/providers/foundation/services/ai.service.dart';
import 'package:starter_kit/domain/usecases/analyze_with_ai.usecase.dart';

part 'ai.service.provider.g.dart';

/// Ai service provider
@riverpod
Future<AiService> aiService(Ref ref) async {
  final AnalyzeWithAIUseCase analyzeWithAIUseCase = await ref.watch(
    analyzeWithAIUseCaseProvider.future,
  );

  return AiService(analyzeWithAIUseCase);
}
