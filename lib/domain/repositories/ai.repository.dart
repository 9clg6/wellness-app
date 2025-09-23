import 'package:welly/data/bodies/analyze_with_ai_param.dart';
import 'package:welly/domain/entities/ai_analysis.entity.dart';

/// Repository interface for AI analysis operations
abstract class AIRepository {
  /// Analyze happen actions with AI
  Future<AIAnalysisEntity> analyzeWithAI(AnalyzeWithAIParam params);
}
