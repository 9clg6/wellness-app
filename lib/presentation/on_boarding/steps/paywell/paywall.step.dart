import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:purchases_flutter/purchases_flutter.dart';
import 'package:purchases_ui_flutter/views/paywall_view.dart';
import 'package:welly/core/localization/generated/locale_keys.g.dart';
import 'package:welly/presentation/on_boarding/steps/paywell/paywall.step.state.dart';
import 'package:welly/presentation/on_boarding/steps/paywell/paywall.step.view_model.dart';
import 'package:welly/presentation/widgets/custom_loader.dart';
import 'package:welly/presentation/widgets/error_placeholder.dart';
import 'package:welly/presentation/widgets/text_variant.dart';

/// Custom paywall step
// TODO(clement): Add paywall with RevenueCat and RevenueService
class PaywallStep extends ConsumerWidget {
  /// Constructor
  const PaywallStep({required this.onNext, super.key});

  /// On next
  final void Function() onNext;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<PaywallStepState> state = ref.watch(
      paywallStepViewModelProvider,
    );

    return state.when(
      data: (PaywallStepState data) {
        // Check if we have offerings available
        if (data.offerings.isEmpty) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Icon(
                  Icons.shopping_cart_outlined,
                  size: 64,
                  color: Colors.grey,
                ),
                const SizedBox(height: 16),
                TextVariant(
                  LocaleKeys.onboarding_paywall_noOfferings.tr(),
                  variantType: TextVariantType.headlineSmall,
                ),
                const SizedBox(height: 24),
                ElevatedButton(
                  onPressed: onNext,
                  child: TextVariant(
                    LocaleKeys.onboarding_paywall_next.tr(),
                    variantType: TextVariantType.titleMedium,
                  ),
                ),
              ],
            ),
          );
        }

        return PaywallView(
          offering: data.offerings.first,
          displayCloseButton: true,
          onPurchaseStarted: (Package rcPackage) {
            debugPrint('Purchase started for package: ${rcPackage.identifier}');
          },
          onPurchaseCompleted:
              (CustomerInfo customerInfo, StoreTransaction storeTransaction) {
                debugPrint(
                  'Purchase completed for customerInfo:\n $customerInfo\n '
                  'and storeTransaction:\n $storeTransaction',
                );
              },
          onPurchaseCancelled: () {
            debugPrint('Purchase cancelled');
          },
          onPurchaseError: (PurchasesError error) {
            debugPrint('Purchase error: $error');
          },
          onRestoreCompleted: (CustomerInfo customerInfo) {
            debugPrint('Restore completed for customerInfo:\n $customerInfo');
          },
          onRestoreError: (PurchasesError error) {
            debugPrint('Restore error: $error');
          },
          onDismiss: onNext,
        );
      },

      error: ErrorPlaceholder.new,
      loading: CustomLoader.new,
    );
  }
}
