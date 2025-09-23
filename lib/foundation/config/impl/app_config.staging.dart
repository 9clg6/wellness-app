import 'package:welly/foundation/config/app_config.dart';
import 'package:welly/foundation/enum/environment.enum.dart';

/// App config staging
final class AppConfigStaging implements AppConfig {
  @override
  String get baseUrl => 'http://starterkit.fr';

  @override
  String get appName => 'Wellness App - Staging';

  @override
  Environment get env => Environment.staging;

  @override
  String get openApiBaseUrl => 'https://api.openai.com/v1/';

  @override
  String get revenueCatAppleApiKey => 'appl_staging_api_key_here';

  @override
  String get revenueCatGoogleApiKey => 'goog_staging_api_key_here';

  @override
  bool get isProd => false;
}
