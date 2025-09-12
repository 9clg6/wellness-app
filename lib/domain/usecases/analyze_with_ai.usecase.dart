import 'package:starter_kit/data/bodies/analyze_with_ai_param.dart';
import 'package:starter_kit/domain/entities/ai_analysis.entity.dart';
import 'package:starter_kit/domain/repositories/ai.repository.dart';
import 'package:starter_kit/foundation/interfaces/future.usecases.dart';

/// Use case for analyzing happen actions with AI
final class AnalyzeWithAIUseCase
    extends FutureUseCaseWithParams<AIAnalysisEntity, AnalyzeWithAIParam> {
  /// Constructor
  AnalyzeWithAIUseCase(this._repository);

  final AIRepository _repository;

  @override
  Future<AIAnalysisEntity> invoke(AnalyzeWithAIParam params) {
    return _repository.analyzeWithAI(params);
  }
}
