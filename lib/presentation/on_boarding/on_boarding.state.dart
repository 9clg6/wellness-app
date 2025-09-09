import 'package:freezed_annotation/freezed_annotation.dart';

part 'on_boarding.state.freezed.dart';

///
@Freezed(copyWith: true)
final class OnBoardingState with _$OnBoardingState {
  /// Constructor
  const OnBoardingState({this.currentStep = 0, this.selectedOption});

  /// Initial state
  factory OnBoardingState.initial() => const OnBoardingState();

  /// Current step
  @override
  final int currentStep;

  /// Selected option
  @override
  final int? selectedOption;
}
