// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'purchase.service.provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Purchase service provider

@ProviderFor(purchaseService)
const purchaseServiceProvider = PurchaseServiceProvider._();

/// Purchase service provider

final class PurchaseServiceProvider
    extends
        $FunctionalProvider<PurchaseService, PurchaseService, PurchaseService>
    with $Provider<PurchaseService> {
  /// Purchase service provider
  const PurchaseServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'purchaseServiceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$purchaseServiceHash();

  @$internal
  @override
  $ProviderElement<PurchaseService> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  PurchaseService create(Ref ref) {
    return purchaseService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PurchaseService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PurchaseService>(value),
    );
  }
}

String _$purchaseServiceHash() => r'ed7604944ef26fac2cd9a6314e0683199ccbcf1c';
