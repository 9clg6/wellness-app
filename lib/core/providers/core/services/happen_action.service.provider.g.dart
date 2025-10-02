// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'happen_action.service.provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Provider pour HappenActionService

@ProviderFor(happenActionService)
const happenActionServiceProvider = HappenActionServiceProvider._();

/// Provider pour HappenActionService

final class HappenActionServiceProvider
    extends
        $FunctionalProvider<
          AsyncValue<HappenActionService>,
          HappenActionService,
          FutureOr<HappenActionService>
        >
    with
        $FutureModifier<HappenActionService>,
        $FutureProvider<HappenActionService> {
  /// Provider pour HappenActionService
  const HappenActionServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'happenActionServiceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$happenActionServiceHash();

  @$internal
  @override
  $FutureProviderElement<HappenActionService> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<HappenActionService> create(Ref ref) {
    return happenActionService(ref);
  }
}

String _$happenActionServiceHash() =>
    r'd4bdc8cb553315b0917f2567ec4cd3d5ef68e5b9';
