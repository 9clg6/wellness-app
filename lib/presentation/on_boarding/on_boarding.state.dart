import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';

part 'on_boarding.state.g.dart';

///
@CopyWith()
final class OnBoardingState with EquatableMixin {
  /// Constructor
  const OnBoardingState({this.currentStep = 0, this.selectedOption});

  /// Initial state
  factory OnBoardingState.initial() => const OnBoardingState();

  /// Current step
  final int currentStep;

  /// Selected option
  final int? selectedOption;

  @override
  List<Object?> get props => <Object?>[currentStep, selectedOption];
}
