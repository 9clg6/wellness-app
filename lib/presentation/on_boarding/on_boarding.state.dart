import 'package:freezed_annotation/freezed_annotation.dart';

part 'on_boarding.state.freezed.dart';

///
@freezed
abstract class OnBoardingState with _$OnBoardingState {
  /// Constructor
  const factory OnBoardingState({
    required int currentStep,
    int? selectedOption,
  }) = _OnBoardingState;

  /// Initial state
  factory OnBoardingState.initial() => const OnBoardingState(currentStep: 0);
}
