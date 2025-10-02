// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'save_happen_action.usecase.provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Provider for SaveHappenActionUseCase

@ProviderFor(saveHappenActionUseCase)
const saveHappenActionUseCaseProvider = SaveHappenActionUseCaseProvider._();

/// Provider for SaveHappenActionUseCase

final class SaveHappenActionUseCaseProvider
    extends
        $FunctionalProvider<
          AsyncValue<SaveHappenActionUseCase>,
          SaveHappenActionUseCase,
          FutureOr<SaveHappenActionUseCase>
        >
    with
        $FutureModifier<SaveHappenActionUseCase>,
        $FutureProvider<SaveHappenActionUseCase> {
  /// Provider for SaveHappenActionUseCase
  const SaveHappenActionUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'saveHappenActionUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$saveHappenActionUseCaseHash();

  @$internal
  @override
  $FutureProviderElement<SaveHappenActionUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<SaveHappenActionUseCase> create(Ref ref) {
    return saveHappenActionUseCase(ref);
  }
}

String _$saveHappenActionUseCaseHash() =>
    r'9e667ecc212791d1a144051378f6f02ace8b6e9a';
