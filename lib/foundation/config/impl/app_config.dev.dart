import 'package:starter_kit/foundation/config/app_config.dart';
import 'package:starter_kit/foundation/enum/environment.enum.dart';

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
  bool get isProd => false;
}
