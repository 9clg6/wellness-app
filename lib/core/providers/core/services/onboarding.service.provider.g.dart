// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'onboarding.service.provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$onboardingServiceHash() => r'd01fce767733270e3cb1606ba691ed885b53f15a';

/// Service d'onboarding: source de vérité des réponses + API de mise à jour
///
/// Copied from [OnboardingService].
@ProviderFor(OnboardingService)
final onboardingServiceProvider =
    AutoDisposeNotifierProvider<OnboardingService, OnboardingAnswers>.internal(
      OnboardingService.new,
      name: r'onboardingServiceProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$onboardingServiceHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$OnboardingService = AutoDisposeNotifier<OnboardingAnswers>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
