// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review.state.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ReviewStateCWProxy {
  ReviewState isLoading(bool isLoading);

  ReviewState streakDays(int streakDays);

  ReviewState entries(List<HappenActionEntity> entries);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ReviewState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ReviewState(...).copyWith(id: 12, name: "My name")
  /// ````
  ReviewState call({
    bool isLoading,
    int streakDays,
    List<HappenActionEntity> entries,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfReviewState.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfReviewState.copyWith.fieldName(...)`
class _$ReviewStateCWProxyImpl implements _$ReviewStateCWProxy {
  const _$ReviewStateCWProxyImpl(this._value);

  final ReviewState _value;

  @override
  ReviewState isLoading(bool isLoading) => this(isLoading: isLoading);

  @override
  ReviewState streakDays(int streakDays) => this(streakDays: streakDays);

  @override
  ReviewState entries(List<HappenActionEntity> entries) =>
      this(entries: entries);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ReviewState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ReviewState(...).copyWith(id: 12, name: "My name")
  /// ````
  ReviewState call({
    Object? isLoading = const $CopyWithPlaceholder(),
    Object? streakDays = const $CopyWithPlaceholder(),
    Object? entries = const $CopyWithPlaceholder(),
  }) {
    return ReviewState(
      isLoading: isLoading == const $CopyWithPlaceholder()
          ? _value.isLoading
          // ignore: cast_nullable_to_non_nullable
          : isLoading as bool,
      streakDays: streakDays == const $CopyWithPlaceholder()
          ? _value.streakDays
          // ignore: cast_nullable_to_non_nullable
          : streakDays as int,
      entries: entries == const $CopyWithPlaceholder()
          ? _value.entries
          // ignore: cast_nullable_to_non_nullable
          : entries as List<HappenActionEntity>,
    );
  }
}

extension $ReviewStateCopyWith on ReviewState {
  /// Returns a callable class that can be used as follows: `instanceOfReviewState.copyWith(...)` or like so:`instanceOfReviewState.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ReviewStateCWProxy get copyWith => _$ReviewStateCWProxyImpl(this);
}
