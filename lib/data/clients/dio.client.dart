import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:starter_kit/foundation/config/app_config.dart';

/// Dio client
class DioClient extends DioForNative {
  DioClient._(String baseUrl) : super(_baseOptions(baseUrl));

  /// Basic factory
  factory DioClient.basic(AppConfig appConfig) {
    return DioClient._(appConfig.openApiBaseUrl);
  }

  /// Base options
  static BaseOptions _baseOptions(String baseUrl) => BaseOptions()
    ..followRedirects = true
    ..baseUrl = baseUrl
    ..connectTimeout = const Duration(seconds: 120)
    ..maxRedirects = 5
    ..contentType = Headers.jsonContentType;

  /// Make a new authenticated request with [options]
  Future<Response<dynamic>> authenticatedRequestWithOptions(
    RequestOptions options,
  ) {
    return request<dynamic>(
      options.path,
      queryParameters: options.queryParameters,
      data: options.data,
    );
  }
}
