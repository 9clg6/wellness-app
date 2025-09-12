import 'dart:async';

import 'package:starter_kit/data/bodies/analyze_with_ai_param.dart';
import 'package:starter_kit/data/datasources/remote/ai_analysis.datasource.dart';
import 'package:starter_kit/data/endpoint/ai_endpoint.dart';
import 'package:starter_kit/data/model/remote/api_response_wrapper.remote.model.dart';

/// Remote data source implementation for AI analysis
final class AIRemoteDataSource implements AIDataSource {
  /// Constructor
  AIRemoteDataSource({required AiEndpoint aiEndpoint})
    : _aiEndpoint = aiEndpoint;

  final AiEndpoint _aiEndpoint;

  @override
  Future<ApiResponseWrapper> analyzeWithAI(AnalyzeWithAIParam params) async {
    return _aiEndpoint.analyzeWithAI(params);
  }
}
