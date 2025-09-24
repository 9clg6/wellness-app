import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:welly/core/localization/generated/locale_keys.g.dart';

part 'home.state.freezed.dart';

/// Home state
@freezed
abstract class HomeState with _$HomeState {
  /// Constructor
  const factory HomeState({
    required bool showSecondField,
    required bool showValidationButton,
    required String topMotivationText,
    required int step,
    required bool showOverlay,
    required int messageStep,
  }) = _HomeState;

  /// Initial state
  factory HomeState.initial() => const HomeState(
    showSecondField: false,
    showValidationButton: false,
    topMotivationText: LocaleKeys.positiveMomentMessage3,
    step: 0,
    showOverlay: false,
    messageStep: 0,
  );
}

/// Extension on HomeState
extension HomeStateExtension on HomeState {
  /// Total steps to complete a day
  static const int totalSteps = 3;

  /// Remaining cards to fill including the current one
  int get remainingCards {
    final int remaining = totalSteps - step;
    return remaining <= 0 ? 0 : remaining;
  }
}
