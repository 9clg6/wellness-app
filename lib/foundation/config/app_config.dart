
import 'package:welly/foundation/enum/environment.enum.dart';

/// App config
abstract class AppConfig {
  /// Constructor
  const AppConfig({
    required this.appName,
    required this.baseUrl,
    required this.env,
    required this.openApiBaseUrl,
    required this.revenueCatAppleApiKey,
    required this.revenueCatGoogleApiKey,
  });

  /// Environment
  final Environment env;

  /// App name
  final String appName;

  ///Auth base url
  final String openApiBaseUrl;

  /// Base url
  final String baseUrl;

  /// RevenueCat Apple API key
  final String revenueCatAppleApiKey;

  /// RevenueCat Google API key
  final String revenueCatGoogleApiKey;

  /// Is production
  bool get isProd => env == Environment.production;
}
