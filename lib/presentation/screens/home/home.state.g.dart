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
    );
  }
}

extension $HomeStateCopyWith on HomeState {
  /// Returns a callable class that can be used as follows: `instanceOfHomeState.copyWith(...)` or like so:`instanceOfHomeState.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$HomeStateCWProxy get copyWith => _$HomeStateCWProxyImpl(this);
}
