import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:welly/core/providers/data/repositories/ai.repository.provider.dart';
import 'package:welly/domain/repositories/ai.repository.dart';
import 'package:welly/domain/usecases/analyze_with_ai.usecase.dart';

part 'analyze_with_ai.usecase.provider.g.dart';

/// Provider for analyze with AI use case
@riverpod
Future<AnalyzeWithAIUseCase> analyzeWithAIUseCase(Ref ref) async {
  final AIRepository repository = await ref.watch(aiRepositoryProvider.future);
  
  return AnalyzeWithAIUseCase(repository);
}
