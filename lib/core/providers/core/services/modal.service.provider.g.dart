// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modal.service.provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Modal service provider

@ProviderFor(modalService)
const modalServiceProvider = ModalServiceProvider._();

/// Modal service provider

final class ModalServiceProvider
    extends $FunctionalProvider<ModalService, ModalService, ModalService>
    with $Provider<ModalService> {
  /// Modal service provider
  const ModalServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'modalServiceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$modalServiceHash();

  @$internal
  @override
  $ProviderElement<ModalService> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  ModalService create(Ref ref) {
    return modalService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ModalService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ModalService>(value),
    );
  }
}

String _$modalServiceHash() => r'9e0a38463f833b8a467a4e9336de51ccac4cf4b3';
