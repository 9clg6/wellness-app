import 'package:welly/foundation/config/app_config.dart';
import 'package:welly/foundation/enum/environment.enum.dart';

/// App config mock
final class AppConfigMock implements AppConfig {
  @override
  String get baseUrl => '';

  @override
  String get appName => 'Wellness App - Mock';

  @override
  Environment get env => Environment.mock;

  @override
  String get openApiBaseUrl => '';

  @override
  String get revenueCatAppleApiKey => 'appl_mock_api_key';

  @override
  String get revenueCatGoogleApiKey => 'goog_mock_api_key';

  @override
  bool get isProd => false;
}
