import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:welly/foundation/config/app_config.dart';
import 'package:welly/foundation/config/impl/app_config.dev.dart';
import 'package:welly/foundation/config/impl/app_config.mock.dart';
import 'package:welly/foundation/config/impl/app_config.prod.dart';
import 'package:welly/foundation/config/impl/app_config.staging.dart';
import 'package:welly/foundation/config/impl/app_config.test.dart';
import 'package:welly/foundation/enum/environment.enum.dart';

part 'appconfig.provider.g.dart';

/// App config provider
@riverpod
AppConfig appConfig(Ref ref) {
  const String envKey = 'ENVIRONMENT';
  const String defaultEnv = 'PRODUCTION';

  late AppConfig appConfig;

  const String appEnv = String.fromEnvironment(
    envKey,
    defaultValue: defaultEnv,
  );

  // Debug: print the environment value
  debugPrint('🔧 Environment detected: $appEnv');

  final Environment environment = Environment.values.firstWhere(
    (Environment element) => element.type == appEnv,
    orElse: () => Environment.production,
  );

  switch (environment) {
    case Environment.development:
      appConfig = AppConfigDev();
    case Environment.staging:
      appConfig = AppConfigStaging();
    case Environment.production:
      appConfig = AppConfigProd();
    case Environment.test:
      appConfig = AppConfigTest();
    case Environment.mock:
      appConfig = AppConfigMock();
  }

  return appConfig;
}
