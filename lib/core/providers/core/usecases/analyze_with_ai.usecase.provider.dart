import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:starter_kit/core/providers/data/repositories/ai.repository.provider.dart';
import 'package:starter_kit/domain/repositories/ai.repository.dart';
import 'package:starter_kit/domain/usecases/analyze_with_ai.usecase.dart';

part 'analyze_with_ai.usecase.provider.g.dart';

/// Provider for analyze with AI use case
@riverpod
Future<AnalyzeWithAIUseCase> analyzeWithAIUseCase(Ref ref) async {
  final AIRepository repository = await ref.watch(aiRepositoryProvider.future);
  
  return AnalyzeWithAIUseCase(repository);
}
