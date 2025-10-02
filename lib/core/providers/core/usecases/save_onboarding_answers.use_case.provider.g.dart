// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'save_onboarding_answers.use_case.provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Save onboarding answers use case provider

@ProviderFor(saveOnboardingAnswersUseCase)
const saveOnboardingAnswersUseCaseProvider =
    SaveOnboardingAnswersUseCaseProvider._();

/// Save onboarding answers use case provider

final class SaveOnboardingAnswersUseCaseProvider
    extends
        $FunctionalProvider<
          AsyncValue<SaveOnboardingAnswersUseCase>,
          SaveOnboardingAnswersUseCase,
          FutureOr<SaveOnboardingAnswersUseCase>
        >
    with
        $FutureModifier<SaveOnboardingAnswersUseCase>,
        $FutureProvider<SaveOnboardingAnswersUseCase> {
  /// Save onboarding answers use case provider
  const SaveOnboardingAnswersUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'saveOnboardingAnswersUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$saveOnboardingAnswersUseCaseHash();

  @$internal
  @override
  $FutureProviderElement<SaveOnboardingAnswersUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<SaveOnboardingAnswersUseCase> create(Ref ref) {
    return saveOnboardingAnswersUseCase(ref);
  }
}

String _$saveOnboardingAnswersUseCaseHash() =>
    r'522e4d61c5c1b084dcb1537f6dd0ce9028c4eee2';
