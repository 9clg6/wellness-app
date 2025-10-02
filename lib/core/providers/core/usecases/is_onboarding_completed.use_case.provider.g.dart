// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'is_onboarding_completed.use_case.provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Is onboarding completed use case provider

@ProviderFor(isOnboardingCompletedUseCase)
const isOnboardingCompletedUseCaseProvider =
    IsOnboardingCompletedUseCaseProvider._();

/// Is onboarding completed use case provider

final class IsOnboardingCompletedUseCaseProvider
    extends
        $FunctionalProvider<
          AsyncValue<IsOnboardingCompletedUseCase>,
          IsOnboardingCompletedUseCase,
          FutureOr<IsOnboardingCompletedUseCase>
        >
    with
        $FutureModifier<IsOnboardingCompletedUseCase>,
        $FutureProvider<IsOnboardingCompletedUseCase> {
  /// Is onboarding completed use case provider
  const IsOnboardingCompletedUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'isOnboardingCompletedUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$isOnboardingCompletedUseCaseHash();

  @$internal
  @override
  $FutureProviderElement<IsOnboardingCompletedUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<IsOnboardingCompletedUseCase> create(Ref ref) {
    return isOnboardingCompletedUseCase(ref);
  }
}

String _$isOnboardingCompletedUseCaseHash() =>
    r'b1507273399769372630630662b4d16ac9307fa5';
