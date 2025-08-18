// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'on_boarding.state.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$OnBoardingStateCWProxy {
  OnBoardingState currentStep(int currentStep);

  OnBoardingState selectedOption(int? selectedOption);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `OnBoardingState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// OnBoardingState(...).copyWith(id: 12, name: "My name")
  /// ````
  OnBoardingState call({int currentStep, int? selectedOption});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfOnBoardingState.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfOnBoardingState.copyWith.fieldName(...)`
class _$OnBoardingStateCWProxyImpl implements _$OnBoardingStateCWProxy {
  const _$OnBoardingStateCWProxyImpl(this._value);

  final OnBoardingState _value;

  @override
  OnBoardingState currentStep(int currentStep) =>
      this(currentStep: currentStep);

  @override
  OnBoardingState selectedOption(int? selectedOption) =>
      this(selectedOption: selectedOption);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `OnBoardingState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// OnBoardingState(...).copyWith(id: 12, name: "My name")
  /// ````
  OnBoardingState call({
    Object? currentStep = const $CopyWithPlaceholder(),
    Object? selectedOption = const $CopyWithPlaceholder(),
  }) {
    return OnBoardingState(
      currentStep: currentStep == const $CopyWithPlaceholder()
          ? _value.currentStep
          // ignore: cast_nullable_to_non_nullable
          : currentStep as int,
      selectedOption: selectedOption == const $CopyWithPlaceholder()
          ? _value.selectedOption
          // ignore: cast_nullable_to_non_nullable
          : selectedOption as int?,
    );
  }
}

extension $OnBoardingStateCopyWith on OnBoardingState {
  /// Returns a callable class that can be used as follows: `instanceOfOnBoardingState.copyWith(...)` or like so:`instanceOfOnBoardingState.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$OnBoardingStateCWProxy get copyWith => _$OnBoardingStateCWProxyImpl(this);
}
