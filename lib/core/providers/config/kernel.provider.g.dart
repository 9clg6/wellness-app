// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kernel.provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Kernel provider

@ProviderFor(kernel)
const kernelProvider = KernelProvider._();

/// Kernel provider

final class KernelProvider
    extends $FunctionalProvider<AsyncValue<void>, void, FutureOr<void>>
    with $FutureModifier<void>, $FutureProvider<void> {
  /// Kernel provider
  const KernelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'kernelProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$kernelHash();

  @$internal
  @override
  $FutureProviderElement<void> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<void> create(Ref ref) {
    return kernel(ref);
  }
}

String _$kernelHash() => r'b5f2f5645ec07cbeebcea698a316c446940ebae8';
