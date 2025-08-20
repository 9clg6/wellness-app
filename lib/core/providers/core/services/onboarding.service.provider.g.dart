// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'onboarding.service.provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$onboardingServiceHash() => r'201bcbfbe628545ff353c5e0687063901c200675';

/// Service d'onboarding: source de vérité des réponses + API de mise à jour
///
/// Copied from [OnboardingService].
@ProviderFor(OnboardingService)
final onboardingServiceProvider =
    NotifierProvider<OnboardingService, OnboardingAnswers>.internal(
      OnboardingService.new,
      name: r'onboardingServiceProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$onboardingServiceHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$OnboardingService = Notifier<OnboardingAnswers>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
