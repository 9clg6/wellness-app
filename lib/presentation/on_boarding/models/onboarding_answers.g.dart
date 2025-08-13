// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'onboarding_answers.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$OnboardingAnswersCWProxy {
  OnboardingAnswers frequencyIndex(int? frequencyIndex);

  OnboardingAnswers discoverySourceIndex(int? discoverySourceIndex);

  OnboardingAnswers favoriteThemeIndex(int? favoriteThemeIndex);

  OnboardingAnswers practiceDurationIndex(int? practiceDurationIndex);

  OnboardingAnswers serenityScore(int? serenityScore);

  OnboardingAnswers firstName(String? firstName);

  OnboardingAnswers age(int? age);

  OnboardingAnswers goalIndex(int? goalIndex);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `OnboardingAnswers(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// OnboardingAnswers(...).copyWith(id: 12, name: "My name")
  /// ````
  OnboardingAnswers call({
    int? frequencyIndex,
    int? discoverySourceIndex,
    int? favoriteThemeIndex,
    int? practiceDurationIndex,
    int? serenityScore,
    String? firstName,
    int? age,
    int? goalIndex,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfOnboardingAnswers.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfOnboardingAnswers.copyWith.fieldName(...)`
class _$OnboardingAnswersCWProxyImpl implements _$OnboardingAnswersCWProxy {
  const _$OnboardingAnswersCWProxyImpl(this._value);

  final OnboardingAnswers _value;

  @override
  OnboardingAnswers frequencyIndex(int? frequencyIndex) =>
      this(frequencyIndex: frequencyIndex);

  @override
  OnboardingAnswers discoverySourceIndex(int? discoverySourceIndex) =>
      this(discoverySourceIndex: discoverySourceIndex);

  @override
  OnboardingAnswers favoriteThemeIndex(int? favoriteThemeIndex) =>
      this(favoriteThemeIndex: favoriteThemeIndex);

  @override
  OnboardingAnswers practiceDurationIndex(int? practiceDurationIndex) =>
      this(practiceDurationIndex: practiceDurationIndex);

  @override
  OnboardingAnswers serenityScore(int? serenityScore) =>
      this(serenityScore: serenityScore);

  @override
  OnboardingAnswers firstName(String? firstName) => this(firstName: firstName);

  @override
  OnboardingAnswers age(int? age) => this(age: age);

  @override
  OnboardingAnswers goalIndex(int? goalIndex) => this(goalIndex: goalIndex);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `OnboardingAnswers(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// OnboardingAnswers(...).copyWith(id: 12, name: "My name")
  /// ````
  OnboardingAnswers call({
    Object? frequencyIndex = const $CopyWithPlaceholder(),
    Object? discoverySourceIndex = const $CopyWithPlaceholder(),
    Object? favoriteThemeIndex = const $CopyWithPlaceholder(),
    Object? practiceDurationIndex = const $CopyWithPlaceholder(),
    Object? serenityScore = const $CopyWithPlaceholder(),
    Object? firstName = const $CopyWithPlaceholder(),
    Object? age = const $CopyWithPlaceholder(),
    Object? goalIndex = const $CopyWithPlaceholder(),
  }) {
    return OnboardingAnswers(
      frequencyIndex: frequencyIndex == const $CopyWithPlaceholder()
          ? _value.frequencyIndex
          // ignore: cast_nullable_to_non_nullable
          : frequencyIndex as int?,
      discoverySourceIndex: discoverySourceIndex == const $CopyWithPlaceholder()
          ? _value.discoverySourceIndex
          // ignore: cast_nullable_to_non_nullable
          : discoverySourceIndex as int?,
      favoriteThemeIndex: favoriteThemeIndex == const $CopyWithPlaceholder()
          ? _value.favoriteThemeIndex
          // ignore: cast_nullable_to_non_nullable
          : favoriteThemeIndex as int?,
      practiceDurationIndex:
          practiceDurationIndex == const $CopyWithPlaceholder()
          ? _value.practiceDurationIndex
          // ignore: cast_nullable_to_non_nullable
          : practiceDurationIndex as int?,
      serenityScore: serenityScore == const $CopyWithPlaceholder()
          ? _value.serenityScore
          // ignore: cast_nullable_to_non_nullable
          : serenityScore as int?,
      firstName: firstName == const $CopyWithPlaceholder()
          ? _value.firstName
          // ignore: cast_nullable_to_non_nullable
          : firstName as String?,
      age: age == const $CopyWithPlaceholder()
          ? _value.age
          // ignore: cast_nullable_to_non_nullable
          : age as int?,
      goalIndex: goalIndex == const $CopyWithPlaceholder()
          ? _value.goalIndex
          // ignore: cast_nullable_to_non_nullable
          : goalIndex as int?,
    );
  }
}

extension $OnboardingAnswersCopyWith on OnboardingAnswers {
  /// Returns a callable class that can be used as follows: `instanceOfOnboardingAnswers.copyWith(...)` or like so:`instanceOfOnboardingAnswers.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$OnboardingAnswersCWProxy get copyWith =>
      _$OnboardingAnswersCWProxyImpl(this);
}
