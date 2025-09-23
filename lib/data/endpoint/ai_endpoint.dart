import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:welly/data/bodies/analyze_with_ai_param.dart';
import 'package:welly/data/model/remote/api_response_wrapper.remote.model.dart';

part 'ai_endpoint.g.dart';

/// Ai Endpoint
@RestApi()
abstract class AiEndpoint {
  /// Ai Endpoint constructor
  factory AiEndpoint(Dio dio) = _AiEndpoint;

  /// Analyze with AI
  @POST('responses')
  Future<ApiResponseWrapper> analyzeWithAI(@Body() AnalyzeWithAIParam body);
}
