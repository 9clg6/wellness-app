// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_onboarding_answers.use_case.provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Get onboarding answers use case provider

@ProviderFor(getOnboardingAnswersUseCase)
const getOnboardingAnswersUseCaseProvider =
    GetOnboardingAnswersUseCaseProvider._();

/// Get onboarding answers use case provider

final class GetOnboardingAnswersUseCaseProvider
    extends
        $FunctionalProvider<
          AsyncValue<GetOnboardingAnswersUseCase>,
          GetOnboardingAnswersUseCase,
          FutureOr<GetOnboardingAnswersUseCase>
        >
    with
        $FutureModifier<GetOnboardingAnswersUseCase>,
        $FutureProvider<GetOnboardingAnswersUseCase> {
  /// Get onboarding answers use case provider
  const GetOnboardingAnswersUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getOnboardingAnswersUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getOnboardingAnswersUseCaseHash();

  @$internal
  @override
  $FutureProviderElement<GetOnboardingAnswersUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<GetOnboardingAnswersUseCase> create(Ref ref) {
    return getOnboardingAnswersUseCase(ref);
  }
}

String _$getOnboardingAnswersUseCaseHash() =>
    r'1e9c73f86498409a8b28fbc8c5516980a7140b9d';
