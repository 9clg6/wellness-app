import 'package:welly/foundation/config/app_config.dart';
import 'package:welly/foundation/enum/environment.enum.dart';

/// App config dev
final class AppConfigDev implements AppConfig {
  @override
  String get baseUrl => 'https://api.example.com';

  @override
  String get appName => 'Wellness App - Dev';

  @override
  Environment get env => Environment.development;

  @override
  String get openApiBaseUrl => 'https://api.openai.com/v1/';

  @override
  String get revenueCatAppleApiKey {
    return const String.fromEnvironment('REVENUECAT_APPLE_API_KEY');
  }

  @override
  String get revenueCatGoogleApiKey => 'goog_dev_api_key_here';

  @override
  bool get isProd => false;
}
