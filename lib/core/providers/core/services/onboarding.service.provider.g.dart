// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'onboarding.service.provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Service d'onboarding: source de vérité des réponses + API de mise à jour

@ProviderFor(OnboardingService)
const onboardingServiceProvider = OnboardingServiceProvider._();

/// Service d'onboarding: source de vérité des réponses + API de mise à jour
final class OnboardingServiceProvider
    extends $NotifierProvider<OnboardingService, OnboardingAnswers> {
  /// Service d'onboarding: source de vérité des réponses + API de mise à jour
  const OnboardingServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'onboardingServiceProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$onboardingServiceHash();

  @$internal
  @override
  OnboardingService create() => OnboardingService();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(OnboardingAnswers value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<OnboardingAnswers>(value),
    );
  }
}

String _$onboardingServiceHash() => r'7ea1fde462f862f10dd070ca7c7edced16db069d';

/// Service d'onboarding: source de vérité des réponses + API de mise à jour

abstract class _$OnboardingService extends $Notifier<OnboardingAnswers> {
  OnboardingAnswers build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<OnboardingAnswers, OnboardingAnswers>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<OnboardingAnswers, OnboardingAnswers>,
              OnboardingAnswers,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
