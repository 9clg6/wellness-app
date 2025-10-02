// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'on_boarding.view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// On boarding view model

@ProviderFor(OnBoardingViewModel)
const onBoardingViewModelProvider = OnBoardingViewModelProvider._();

/// On boarding view model
final class OnBoardingViewModelProvider
    extends $NotifierProvider<OnBoardingViewModel, OnBoardingState> {
  /// On boarding view model
  const OnBoardingViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'onBoardingViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$onBoardingViewModelHash();

  @$internal
  @override
  OnBoardingViewModel create() => OnBoardingViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(OnBoardingState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<OnBoardingState>(value),
    );
  }
}

String _$onBoardingViewModelHash() =>
    r'153e3ac15caefad2e874d547170d4d183d70911c';

/// On boarding view model

abstract class _$OnBoardingViewModel extends $Notifier<OnBoardingState> {
  OnBoardingState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<OnBoardingState, OnBoardingState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<OnBoardingState, OnBoardingState>,
              OnBoardingState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
