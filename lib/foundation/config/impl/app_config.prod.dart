import 'package:starter_kit/foundation/config/app_config.dart';
import 'package:starter_kit/foundation/enum/environment.enum.dart';

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
  bool get isProd => true;
}
