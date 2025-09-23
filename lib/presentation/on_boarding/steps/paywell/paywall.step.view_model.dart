import 'package:flutter/material.dart';
import 'package:purchases_flutter/models/offering_wrapper.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:welly/core/providers/core/services/purchase.service.provider.dart';
import 'package:welly/core/providers/foundation/services/purchase.service.dart';
import 'package:welly/presentation/on_boarding/steps/paywell/paywall.step.state.dart';

part 'paywall.step.view_model.g.dart';

/// Paywall step view model
@riverpod
class PaywallStepViewModel extends _$PaywallStepViewModel {
  @override
  Future<PaywallStepState> build() async {
    debugPrint('PaywallStepViewModel: build');
    final PurchaseService purchaseService = ref.watch(purchaseServiceProvider);

    // Wait for offerings to be loaded
    await purchaseService.refreshOfferings();

    // Listen to offerings stream and return current offerings
    final List<Offering> offerings = purchaseService.currentOfferings;

    debugPrint('PaywallStepViewModel: offerings count: ${offerings.length}');

    return PaywallStepState(offerings: offerings);
  }
}
