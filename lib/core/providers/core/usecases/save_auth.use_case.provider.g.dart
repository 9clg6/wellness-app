// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'save_auth.use_case.provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Save Auth Use Case provider

@ProviderFor(saveAuthUseCase)
const saveAuthUseCaseProvider = SaveAuthUseCaseProvider._();

/// Save Auth Use Case provider

final class SaveAuthUseCaseProvider
    extends
        $FunctionalProvider<
          AsyncValue<SaveAuthUseCase>,
          SaveAuthUseCase,
          FutureOr<SaveAuthUseCase>
        >
    with $FutureModifier<SaveAuthUseCase>, $FutureProvider<SaveAuthUseCase> {
  /// Save Auth Use Case provider
  const SaveAuthUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'saveAuthUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$saveAuthUseCaseHash();

  @$internal
  @override
  $FutureProviderElement<SaveAuthUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<SaveAuthUseCase> create(Ref ref) {
    return saveAuthUseCase(ref);
  }
}

String _$saveAuthUseCaseHash() => r'5bdb6838a79314154a812117ee9c5ce14ff21955';
