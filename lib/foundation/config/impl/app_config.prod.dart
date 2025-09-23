import 'package:welly/foundation/config/app_config.dart';
import 'package:welly/foundation/enum/environment.enum.dart';

/// App config prod
final class AppConfigProd implements AppConfig {
  @override
  String get baseUrl => 'https://api.example.com';

  @override
  String get appName => 'Wellness App';

  @override
  Environment get env => Environment.production;

  @override
  String get openApiBaseUrl => 'https://api.openai.com/v1/';

  @override
  String get revenueCatAppleApiKey =>
      const String.fromEnvironment('REVENUECAT_APPLE_API_KEY');

  @override
  String get revenueCatGoogleApiKey => 'goog_prod_api_key_here';

  @override
  bool get isProd => true;
}
