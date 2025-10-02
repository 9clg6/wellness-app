// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paywall.step.view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Paywall step view model

@ProviderFor(PaywallStepViewModel)
const paywallStepViewModelProvider = PaywallStepViewModelProvider._();

/// Paywall step view model
final class PaywallStepViewModelProvider
    extends $AsyncNotifierProvider<PaywallStepViewModel, PaywallStepState> {
  /// Paywall step view model
  const PaywallStepViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'paywallStepViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$paywallStepViewModelHash();

  @$internal
  @override
  PaywallStepViewModel create() => PaywallStepViewModel();
}

String _$paywallStepViewModelHash() =>
    r'1037020e248829137f31b940c33b418537c8951c';

/// Paywall step view model

abstract class _$PaywallStepViewModel extends $AsyncNotifier<PaywallStepState> {
  FutureOr<PaywallStepState> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref as $Ref<AsyncValue<PaywallStepState>, PaywallStepState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<PaywallStepState>, PaywallStepState>,
              AsyncValue<PaywallStepState>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
