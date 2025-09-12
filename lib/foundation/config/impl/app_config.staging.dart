import 'package:starter_kit/foundation/config/app_config.dart';
import 'package:starter_kit/foundation/enum/environment.enum.dart';

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
  bool get isProd => false;
}
