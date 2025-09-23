import 'package:welly/foundation/config/app_config.dart';
import 'package:welly/foundation/enum/environment.enum.dart';

/// App config dev
final class AppConfigTest implements AppConfig {
  @override
  String get baseUrl => '';

  @override
  String get appName => 'Wellness App - Test';

  @override
  Environment get env => Environment.test;

  @override
  String get openApiBaseUrl => '';

  @override
  String get revenueCatAppleApiKey => 'appl_test_api_key';

  @override
  String get revenueCatGoogleApiKey => 'goog_test_api_key';

  @override
  bool get isProd => false;
}
