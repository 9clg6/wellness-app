// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'clear_happen_actions.usecase.provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Provider for ClearHappenActionsUseCase

@ProviderFor(clearHappenActionsUseCase)
const clearHappenActionsUseCaseProvider = ClearHappenActionsUseCaseProvider._();

/// Provider for ClearHappenActionsUseCase

final class ClearHappenActionsUseCaseProvider
    extends
        $FunctionalProvider<
          AsyncValue<ClearHappenActionsUseCase>,
          ClearHappenActionsUseCase,
          FutureOr<ClearHappenActionsUseCase>
        >
    with
        $FutureModifier<ClearHappenActionsUseCase>,
        $FutureProvider<ClearHappenActionsUseCase> {
  /// Provider for ClearHappenActionsUseCase
  const ClearHappenActionsUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'clearHappenActionsUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$clearHappenActionsUseCaseHash();

  @$internal
  @override
  $FutureProviderElement<ClearHappenActionsUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<ClearHappenActionsUseCase> create(Ref ref) {
    return clearHappenActionsUseCase(ref);
  }
}

String _$clearHappenActionsUseCaseHash() =>
    r'2c8ffb9a9bf1b4e1c9501337ee94268591297c11';
