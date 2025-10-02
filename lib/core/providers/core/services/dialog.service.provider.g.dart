// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dialog.service.provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Dialog service provider

@ProviderFor(dialogService)
const dialogServiceProvider = DialogServiceProvider._();

/// Dialog service provider

final class DialogServiceProvider
    extends $FunctionalProvider<DialogService, DialogService, DialogService>
    with $Provider<DialogService> {
  /// Dialog service provider
  const DialogServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'dialogServiceProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$dialogServiceHash();

  @$internal
  @override
  $ProviderElement<DialogService> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  DialogService create(Ref ref) {
    return dialogService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(DialogService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<DialogService>(value),
    );
  }
}

String _$dialogServiceHash() => r'b0da83b3a467366a3ea0bf213d715afea6056abf';
