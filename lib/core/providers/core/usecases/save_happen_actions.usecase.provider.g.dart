// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'save_happen_actions.usecase.provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Provider for SaveHappenActionsUseCase

@ProviderFor(saveHappenActionsUseCase)
const saveHappenActionsUseCaseProvider = SaveHappenActionsUseCaseProvider._();

/// Provider for SaveHappenActionsUseCase

final class SaveHappenActionsUseCaseProvider
    extends
        $FunctionalProvider<
          AsyncValue<SaveHappenActionsUseCase>,
          SaveHappenActionsUseCase,
          FutureOr<SaveHappenActionsUseCase>
        >
    with
        $FutureModifier<SaveHappenActionsUseCase>,
        $FutureProvider<SaveHappenActionsUseCase> {
  /// Provider for SaveHappenActionsUseCase
  const SaveHappenActionsUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'saveHappenActionsUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$saveHappenActionsUseCaseHash();

  @$internal
  @override
  $FutureProviderElement<SaveHappenActionsUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<SaveHappenActionsUseCase> create(Ref ref) {
    return saveHappenActionsUseCase(ref);
  }
}

String _$saveHappenActionsUseCaseHash() =>
    r'8af5d899c81a57acad10d2f3ebc914a6ab7b1e0f';
