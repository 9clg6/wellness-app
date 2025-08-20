// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home.state.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$HomeStateCWProxy {
  HomeState isLoading(bool isLoading);

  HomeState showSecondField(bool showSecondField);

  HomeState showValidationButton(bool showValidationButton);

  HomeState topMotivationText(String topMotivationText);

  HomeState step(int step);

  HomeState showOverlay(bool showOverlay);

  HomeState messageStep(int messageStep);

  HomeState rectAnimation(Animation<RelativeRect>? rectAnimation);

  HomeState radiusAnimation(Animation<double>? radiusAnimation);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `HomeState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// HomeState(...).copyWith(id: 12, name: "My name")
  /// ````
  HomeState call({
    bool isLoading,
    bool showSecondField,
    bool showValidationButton,
    String topMotivationText,
    int step,
    bool showOverlay,
    int messageStep,
    Animation<RelativeRect>? rectAnimation,
    Animation<double>? radiusAnimation,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfHomeState.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfHomeState.copyWith.fieldName(...)`
class _$HomeStateCWProxyImpl implements _$HomeStateCWProxy {
  const _$HomeStateCWProxyImpl(this._value);

  final HomeState _value;

  @override
  HomeState isLoading(bool isLoading) => this(isLoading: isLoading);

  @override
  HomeState showSecondField(bool showSecondField) =>
      this(showSecondField: showSecondField);

  @override
  HomeState showValidationButton(bool showValidationButton) =>
      this(showValidationButton: showValidationButton);

  @override
  HomeState topMotivationText(String topMotivationText) =>
      this(topMotivationText: topMotivationText);

  @override
  HomeState step(int step) => this(step: step);

  @override
  HomeState showOverlay(bool showOverlay) => this(showOverlay: showOverlay);

  @override
  HomeState messageStep(int messageStep) => this(messageStep: messageStep);

  @override
  HomeState rectAnimation(Animation<RelativeRect>? rectAnimation) =>
      this(rectAnimation: rectAnimation);

  @override
  HomeState radiusAnimation(Animation<double>? radiusAnimation) =>
      this(radiusAnimation: radiusAnimation);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `HomeState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// HomeState(...).copyWith(id: 12, name: "My name")
  /// ````
  HomeState call({
    Object? isLoading = const $CopyWithPlaceholder(),
    Object? showSecondField = const $CopyWithPlaceholder(),
    Object? showValidationButton = const $CopyWithPlaceholder(),
    Object? topMotivationText = const $CopyWithPlaceholder(),
    Object? step = const $CopyWithPlaceholder(),
    Object? showOverlay = const $CopyWithPlaceholder(),
    Object? messageStep = const $CopyWithPlaceholder(),
    Object? rectAnimation = const $CopyWithPlaceholder(),
    Object? radiusAnimation = const $CopyWithPlaceholder(),
  }) {
    return HomeState(
      isLoading: isLoading == const $CopyWithPlaceholder()
          ? _value.isLoading
          // ignore: cast_nullable_to_non_nullable
          : isLoading as bool,
      showSecondField: showSecondField == const $CopyWithPlaceholder()
          ? _value.showSecondField
          // ignore: cast_nullable_to_non_nullable
          : showSecondField as bool,
      showValidationButton: showValidationButton == const $CopyWithPlaceholder()
          ? _value.showValidationButton
          // ignore: cast_nullable_to_non_nullable
          : showValidationButton as bool,
      topMotivationText: topMotivationText == const $CopyWithPlaceholder()
          ? _value.topMotivationText
          // ignore: cast_nullable_to_non_nullable
          : topMotivationText as String,
      step: step == const $CopyWithPlaceholder()
          ? _value.step
          // ignore: cast_nullable_to_non_nullable
          : step as int,
      showOverlay: showOverlay == const $CopyWithPlaceholder()
          ? _value.showOverlay
          // ignore: cast_nullable_to_non_nullable
          : showOverlay as bool,
      messageStep: messageStep == const $CopyWithPlaceholder()
          ? _value.messageStep
          // ignore: cast_nullable_to_non_nullable
          : messageStep as int,
      rectAnimation: rectAnimation == const $CopyWithPlaceholder()
          ? _value.rectAnimation
          // ignore: cast_nullable_to_non_nullable
          : rectAnimation as Animation<RelativeRect>?,
      radiusAnimation: radiusAnimation == const $CopyWithPlaceholder()
          ? _value.radiusAnimation
          // ignore: cast_nullable_to_non_nullable
          : radiusAnimation as Animation<double>?,
    );
  }
}

extension $HomeStateCopyWith on HomeState {
  /// Returns a callable class that can be used as follows: `instanceOfHomeState.copyWith(...)` or like so:`instanceOfHomeState.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$HomeStateCWProxy get copyWith => _$HomeStateCWProxyImpl(this);
}
