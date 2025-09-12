import 'package:starter_kit/data/bodies/analyze_with_ai_param.dart';
import 'package:starter_kit/data/model/remote/api_response_wrapper.remote.model.dart';

/// Data source interface for AI analysis operations
abstract class AIDataSource {
  /// Analyze happen actions with AI
  Future<ApiResponseWrapper> analyzeWithAI(
    AnalyzeWithAIParam params,
  );
}
