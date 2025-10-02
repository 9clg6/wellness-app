// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tracking.service.provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Provider for the [TrackingService]

@ProviderFor(trackingService)
const trackingServiceProvider = TrackingServiceProvider._();

/// Provider for the [TrackingService]

final class TrackingServiceProvider
    extends
        $FunctionalProvider<TrackingService, TrackingService, TrackingService>
    with $Provider<TrackingService> {
  /// Provider for the [TrackingService]
  const TrackingServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'trackingServiceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$trackingServiceHash();

  @$internal
  @override
  $ProviderElement<TrackingService> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  TrackingService create(Ref ref) {
    return trackingService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(TrackingService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<TrackingService>(value),
    );
  }
}

String _$trackingServiceHash() => r'6e688b61fe7aa917fa91bc4a1bc4f61d4337104f';
