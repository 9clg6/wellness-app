// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'real_home.state.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$RealHomeStateCWProxy {
  RealHomeState isLoading(bool isLoading);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `RealHomeState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// RealHomeState(...).copyWith(id: 12, name: "My name")
  /// ````
  RealHomeState call({bool isLoading});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfRealHomeState.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfRealHomeState.copyWith.fieldName(...)`
class _$RealHomeStateCWProxyImpl implements _$RealHomeStateCWProxy {
  const _$RealHomeStateCWProxyImpl(this._value);

  final RealHomeState _value;

  @override
  RealHomeState isLoading(bool isLoading) => this(isLoading: isLoading);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `RealHomeState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// RealHomeState(...).copyWith(id: 12, name: "My name")
  /// ````
  RealHomeState call({Object? isLoading = const $CopyWithPlaceholder()}) {
    return RealHomeState(
      isLoading: isLoading == const $CopyWithPlaceholder()
          ? _value.isLoading
          // ignore: cast_nullable_to_non_nullable
          : isLoading as bool,
    );
  }
}

extension $RealHomeStateCopyWith on RealHomeState {
  /// Returns a callable class that can be used as follows: `instanceOfRealHomeState.copyWith(...)` or like so:`instanceOfRealHomeState.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$RealHomeStateCWProxy get copyWith => _$RealHomeStateCWProxyImpl(this);
}
