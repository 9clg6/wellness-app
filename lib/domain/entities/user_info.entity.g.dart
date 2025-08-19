// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_info.entity.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$UserInfoEntityCWProxy {
  UserInfoEntity firstName(String? firstName);

  UserInfoEntity age(int? age);

  UserInfoEntity goalIndex(int? goalIndex);

  UserInfoEntity completedAt(DateTime? completedAt);

  UserInfoEntity onboardingAnswers(Map<String, dynamic>? onboardingAnswers);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UserInfoEntity(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UserInfoEntity(...).copyWith(id: 12, name: "My name")
  /// ````
  UserInfoEntity call({
    String? firstName,
    int? age,
    int? goalIndex,
    DateTime? completedAt,
    Map<String, dynamic>? onboardingAnswers,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfUserInfoEntity.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfUserInfoEntity.copyWith.fieldName(...)`
class _$UserInfoEntityCWProxyImpl implements _$UserInfoEntityCWProxy {
  const _$UserInfoEntityCWProxyImpl(this._value);

  final UserInfoEntity _value;

  @override
  UserInfoEntity firstName(String? firstName) => this(firstName: firstName);

  @override
  UserInfoEntity age(int? age) => this(age: age);

  @override
  UserInfoEntity goalIndex(int? goalIndex) => this(goalIndex: goalIndex);

  @override
  UserInfoEntity completedAt(DateTime? completedAt) =>
      this(completedAt: completedAt);

  @override
  UserInfoEntity onboardingAnswers(Map<String, dynamic>? onboardingAnswers) =>
      this(onboardingAnswers: onboardingAnswers);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UserInfoEntity(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UserInfoEntity(...).copyWith(id: 12, name: "My name")
  /// ````
  UserInfoEntity call({
    Object? firstName = const $CopyWithPlaceholder(),
    Object? age = const $CopyWithPlaceholder(),
    Object? goalIndex = const $CopyWithPlaceholder(),
    Object? completedAt = const $CopyWithPlaceholder(),
    Object? onboardingAnswers = const $CopyWithPlaceholder(),
  }) {
    return UserInfoEntity(
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
      completedAt: completedAt == const $CopyWithPlaceholder()
          ? _value.completedAt
          // ignore: cast_nullable_to_non_nullable
          : completedAt as DateTime?,
      onboardingAnswers: onboardingAnswers == const $CopyWithPlaceholder()
          ? _value.onboardingAnswers
          // ignore: cast_nullable_to_non_nullable
          : onboardingAnswers as Map<String, dynamic>?,
    );
  }
}

extension $UserInfoEntityCopyWith on UserInfoEntity {
  /// Returns a callable class that can be used as follows: `instanceOfUserInfoEntity.copyWith(...)` or like so:`instanceOfUserInfoEntity.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$UserInfoEntityCWProxy get copyWith => _$UserInfoEntityCWProxyImpl(this);
}
