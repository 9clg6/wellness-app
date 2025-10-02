// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set_onboarding_completed.use_case.provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Set onboarding completed use case provider

@ProviderFor(setOnboardingCompletedUseCase)
const setOnboardingCompletedUseCaseProvider =
    SetOnboardingCompletedUseCaseProvider._();

/// Set onboarding completed use case provider

final class SetOnboardingCompletedUseCaseProvider
    extends
        $FunctionalProvider<
          AsyncValue<SetOnboardingCompletedUseCase>,
          SetOnboardingCompletedUseCase,
          FutureOr<SetOnboardingCompletedUseCase>
        >
    with
        $FutureModifier<SetOnboardingCompletedUseCase>,
        $FutureProvider<SetOnboardingCompletedUseCase> {
  /// Set onboarding completed use case provider
  const SetOnboardingCompletedUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'setOnboardingCompletedUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$setOnboardingCompletedUseCaseHash();

  @$internal
  @override
  $FutureProviderElement<SetOnboardingCompletedUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<SetOnboardingCompletedUseCase> create(Ref ref) {
    return setOnboardingCompletedUseCase(ref);
  }
}

String _$setOnboardingCompletedUseCaseHash() =>
    r'ce4d0a4acb1677b97b0cb46d04cb96d510ccc1c7';
