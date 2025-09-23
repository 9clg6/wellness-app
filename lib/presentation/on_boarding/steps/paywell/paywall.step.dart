import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:purchases_flutter/purchases_flutter.dart';
import 'package:purchases_ui_flutter/views/paywall_view.dart';
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
                const TextVariant(
                  'Aucune offre disponible',
                  variantType: TextVariantType.headlineSmall,
                ),
                const SizedBox(height: 24),
                ElevatedButton(
                  onPressed: onNext,
                  child: const TextVariant(
                    'Suivant',
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
          onDismiss: () {
            debugPrint('Paywall asked to dismiss');
            Navigator.pop(context);
          },
        );
      },

      error: ErrorPlaceholder.new,
      loading: CustomLoader.new,
    );
  }
}
