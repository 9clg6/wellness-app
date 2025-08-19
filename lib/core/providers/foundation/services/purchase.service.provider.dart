import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:starter_kit/core/providers/foundation/services/purchase.service.dart';

part 'purchase.service.provider.g.dart';

/// Purchase service provider
@riverpod
PurchaseService purchaseService(Ref ref) {
  final PurchaseService service = PurchaseService();

  // Initialize the service when the provider is created
  ref.onDispose(service.dispose);

  return service;
}
