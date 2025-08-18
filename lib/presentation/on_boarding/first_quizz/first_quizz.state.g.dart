// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'first_quizz.state.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$FirstQuizzStateCWProxy {
  FirstQuizzState currentIndex(int currentIndex);

  FirstQuizzState answers(OnboardingAnswers answers);

  FirstQuizzState tempName(String? tempName);

  FirstQuizzState tempAge(String? tempAge);

  FirstQuizzState isCompleted(bool isCompleted);

  FirstQuizzState selectedResponseIndex(int? selectedResponseIndex);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `FirstQuizzState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// FirstQuizzState(...).copyWith(id: 12, name: "My name")
  /// ````
  FirstQuizzState call({
    int currentIndex,
    OnboardingAnswers answers,
    String? tempName,
    String? tempAge,
    bool isCompleted,
    int? selectedResponseIndex,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfFirstQuizzState.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfFirstQuizzState.copyWith.fieldName(...)`
class _$FirstQuizzStateCWProxyImpl implements _$FirstQuizzStateCWProxy {
  const _$FirstQuizzStateCWProxyImpl(this._value);

  final FirstQuizzState _value;

  @override
  FirstQuizzState currentIndex(int currentIndex) =>
      this(currentIndex: currentIndex);

  @override
  FirstQuizzState answers(OnboardingAnswers answers) => this(answers: answers);

  @override
  FirstQuizzState tempName(String? tempName) => this(tempName: tempName);

  @override
  FirstQuizzState tempAge(String? tempAge) => this(tempAge: tempAge);

  @override
  FirstQuizzState isCompleted(bool isCompleted) =>
      this(isCompleted: isCompleted);

  @override
  FirstQuizzState selectedResponseIndex(int? selectedResponseIndex) =>
      this(selectedResponseIndex: selectedResponseIndex);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `FirstQuizzState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// FirstQuizzState(...).copyWith(id: 12, name: "My name")
  /// ````
  FirstQuizzState call({
    Object? currentIndex = const $CopyWithPlaceholder(),
    Object? answers = const $CopyWithPlaceholder(),
    Object? tempName = const $CopyWithPlaceholder(),
    Object? tempAge = const $CopyWithPlaceholder(),
    Object? isCompleted = const $CopyWithPlaceholder(),
    Object? selectedResponseIndex = const $CopyWithPlaceholder(),
  }) {
    return FirstQuizzState(
      currentIndex: currentIndex == const $CopyWithPlaceholder()
          ? _value.currentIndex
          // ignore: cast_nullable_to_non_nullable
          : currentIndex as int,
      answers: answers == const $CopyWithPlaceholder()
          ? _value.answers
          // ignore: cast_nullable_to_non_nullable
          : answers as OnboardingAnswers,
      tempName: tempName == const $CopyWithPlaceholder()
          ? _value.tempName
          // ignore: cast_nullable_to_non_nullable
          : tempName as String?,
      tempAge: tempAge == const $CopyWithPlaceholder()
          ? _value.tempAge
          // ignore: cast_nullable_to_non_nullable
          : tempAge as String?,
      isCompleted: isCompleted == const $CopyWithPlaceholder()
          ? _value.isCompleted
          // ignore: cast_nullable_to_non_nullable
          : isCompleted as bool,
      selectedResponseIndex:
          selectedResponseIndex == const $CopyWithPlaceholder()
          ? _value.selectedResponseIndex
          // ignore: cast_nullable_to_non_nullable
          : selectedResponseIndex as int?,
    );
  }
}

extension $FirstQuizzStateCopyWith on FirstQuizzState {
  /// Returns a callable class that can be used as follows: `instanceOfFirstQuizzState.copyWith(...)` or like so:`instanceOfFirstQuizzState.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$FirstQuizzStateCWProxy get copyWith => _$FirstQuizzStateCWProxyImpl(this);

  /// Copies the object with the specific fields set to `null`. If you pass `false` as a parameter, nothing will be done and it will be ignored. Don't do it. Prefer `copyWith(field: null)` or `FirstQuizzState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// FirstQuizzState(...).copyWithNull(firstField: true, secondField: true)
  /// ````
  FirstQuizzState copyWithNull({
    bool tempName = false,
    bool tempAge = false,
    bool selectedResponseIndex = false,
  }) {
    return FirstQuizzState(
      currentIndex: currentIndex,
      answers: answers,
      tempName: tempName == true ? null : this.tempName,
      tempAge: tempAge == true ? null : this.tempAge,
      isCompleted: isCompleted,
      selectedResponseIndex: selectedResponseIndex == true
          ? null
          : this.selectedResponseIndex,
    );
  }
}
