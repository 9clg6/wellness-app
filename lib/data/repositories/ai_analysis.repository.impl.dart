import 'package:starter_kit/data/bodies/analyze_with_ai_param.dart';
import 'package:starter_kit/data/datasources/remote/ai_analysis.datasource.dart';
import 'package:starter_kit/data/model/remote/ai_analysis.remote.model.dart';
import 'package:starter_kit/data/model/remote/api_response_wrapper.remote.model.dart';
import 'package:starter_kit/domain/entities/ai_analysis.entity.dart';
import 'package:starter_kit/domain/repositories/ai.repository.dart';

/// Repository implementation for AI analysis operations
final class AIRepositoryImpl implements AIRepository {
  /// Constructor
  const AIRepositoryImpl(this._dataSource);

  final AIDataSource _dataSource;

  @override
  Future<AIAnalysisEntity> analyzeWithAI(AnalyzeWithAIParam params) async {
    final ApiResponseWrapper response = await _dataSource.analyzeWithAI(params);
    
    final AIAnalysisModel? aiAnalysis = response.aiAnalysis;
    if (aiAnalysis == null) {
      throw Exception('No valid AI analysis found in response');
    }
    
    return aiAnalysis.toEntity();
  }
}
