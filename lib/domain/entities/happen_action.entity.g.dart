// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'happen_action.entity.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$HappenActionEntityCWProxy {
  HappenActionEntity happen(String happen);

  HappenActionEntity action(String action);

  HappenActionEntity date(DateTime date);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `HappenActionEntity(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// HappenActionEntity(...).copyWith(id: 12, name: "My name")
  /// ````
  HappenActionEntity call({String happen, String action, DateTime date});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfHappenActionEntity.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfHappenActionEntity.copyWith.fieldName(...)`
class _$HappenActionEntityCWProxyImpl implements _$HappenActionEntityCWProxy {
  const _$HappenActionEntityCWProxyImpl(this._value);

  final HappenActionEntity _value;

  @override
  HappenActionEntity happen(String happen) => this(happen: happen);

  @override
  HappenActionEntity action(String action) => this(action: action);

  @override
  HappenActionEntity date(DateTime date) => this(date: date);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `HappenActionEntity(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// HappenActionEntity(...).copyWith(id: 12, name: "My name")
  /// ````
  HappenActionEntity call({
    Object? happen = const $CopyWithPlaceholder(),
    Object? action = const $CopyWithPlaceholder(),
    Object? date = const $CopyWithPlaceholder(),
  }) {
    return HappenActionEntity(
      happen: happen == const $CopyWithPlaceholder()
          ? _value.happen
          // ignore: cast_nullable_to_non_nullable
          : happen as String,
      action: action == const $CopyWithPlaceholder()
          ? _value.action
          // ignore: cast_nullable_to_non_nullable
          : action as String,
      date: date == const $CopyWithPlaceholder()
          ? _value.date
          // ignore: cast_nullable_to_non_nullable
          : date as DateTime,
    );
  }
}

extension $HappenActionEntityCopyWith on HappenActionEntity {
  /// Returns a callable class that can be used as follows: `instanceOfHappenActionEntity.copyWith(...)` or like so:`instanceOfHappenActionEntity.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$HappenActionEntityCWProxy get copyWith =>
      _$HappenActionEntityCWProxyImpl(this);
}
