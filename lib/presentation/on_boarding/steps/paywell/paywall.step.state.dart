import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:purchases_flutter/models/offering_wrapper.dart';

part 'paywall.step.state.freezed.dart';

/// Paywall step state
@freezed
abstract class PaywallStepState with _$PaywallStepState {
  /// Constructor
  const factory PaywallStepState({required List<Offering> offerings}) =
      _PaywallStepState;

  /// Initial state
  factory PaywallStepState.initial({
    List<Offering> offerings = const <Offering>[],
  }) => PaywallStepState(offerings: offerings);
}
