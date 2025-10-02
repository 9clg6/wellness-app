// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'save_user.use_case.provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Save user use case provider

@ProviderFor(saveUserUseCase)
const saveUserUseCaseProvider = SaveUserUseCaseProvider._();

/// Save user use case provider

final class SaveUserUseCaseProvider
    extends
        $FunctionalProvider<
          AsyncValue<SaveUserUseCase>,
          SaveUserUseCase,
          FutureOr<SaveUserUseCase>
        >
    with $FutureModifier<SaveUserUseCase>, $FutureProvider<SaveUserUseCase> {
  /// Save user use case provider
  const SaveUserUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'saveUserUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$saveUserUseCaseHash();

  @$internal
  @override
  $FutureProviderElement<SaveUserUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<SaveUserUseCase> create(Ref ref) {
    return saveUserUseCase(ref);
  }
}

String _$saveUserUseCaseHash() => r'f86c790f2bba367751ab99120354ce5907dd6cd2';
