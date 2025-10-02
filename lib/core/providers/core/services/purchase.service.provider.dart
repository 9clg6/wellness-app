import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:welly/core/providers/config/appconfig.provider.dart';
import 'package:welly/core/providers/foundation/services/purchase.service.dart';
import 'package:welly/foundation/config/app_config.dart';

part 'purchase.service.provider.g.dart';

/// Purchase service provider
@riverpod
PurchaseService purchaseService(Ref ref) {
  final AppConfig appConfig = ref.watch(appConfigProvider);
  final PurchaseService service = PurchaseService(appConfig: appConfig);

  ref.onDispose(service.dispose);

  return service;
}
