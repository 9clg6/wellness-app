// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'onboarding.service.provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$onboardingServiceHash() => r'7ea1fde462f862f10dd070ca7c7edced16db069d';

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
