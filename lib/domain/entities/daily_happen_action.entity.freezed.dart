// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'daily_happen_action.entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DailyHappenActionEntity {

 DateTime get date; List<HappenActionEntity> get happenActions;
/// Create a copy of DailyHappenActionEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DailyHappenActionEntityCopyWith<DailyHappenActionEntity> get copyWith => _$DailyHappenActionEntityCopyWithImpl<DailyHappenActionEntity>(this as DailyHappenActionEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DailyHappenActionEntity&&(identical(other.date, date) || other.date == date)&&const DeepCollectionEquality().equals(other.happenActions, happenActions));
}


@override
int get hashCode => Object.hash(runtimeType,date,const DeepCollectionEquality().hash(happenActions));

@override
String toString() {
  return 'DailyHappenActionEntity(date: $date, happenActions: $happenActions)';
}


}

/// @nodoc
abstract mixin class $DailyHappenActionEntityCopyWith<$Res>  {
  factory $DailyHappenActionEntityCopyWith(DailyHappenActionEntity value, $Res Function(DailyHappenActionEntity) _then) = _$DailyHappenActionEntityCopyWithImpl;
@useResult
$Res call({
 DateTime date, List<HappenActionEntity> happenActions
});




}
/// @nodoc
class _$DailyHappenActionEntityCopyWithImpl<$Res>
    implements $DailyHappenActionEntityCopyWith<$Res> {
  _$DailyHappenActionEntityCopyWithImpl(this._self, this._then);

  final DailyHappenActionEntity _self;
  final $Res Function(DailyHappenActionEntity) _then;

/// Create a copy of DailyHappenActionEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? date = null,Object? happenActions = null,}) {
  return _then(_self.copyWith(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,happenActions: null == happenActions ? _self.happenActions : happenActions // ignore: cast_nullable_to_non_nullable
as List<HappenActionEntity>,
  ));
}

}


/// Adds pattern-matching-related methods to [DailyHappenActionEntity].
extension DailyHappenActionEntityPatterns on DailyHappenActionEntity {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DailyHappenActionEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DailyHappenActionEntity() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DailyHappenActionEntity value)  $default,){
final _that = this;
switch (_that) {
case _DailyHappenActionEntity():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DailyHappenActionEntity value)?  $default,){
final _that = this;
switch (_that) {
case _DailyHappenActionEntity() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DateTime date,  List<HappenActionEntity> happenActions)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DailyHappenActionEntity() when $default != null:
return $default(_that.date,_that.happenActions);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DateTime date,  List<HappenActionEntity> happenActions)  $default,) {final _that = this;
switch (_that) {
case _DailyHappenActionEntity():
return $default(_that.date,_that.happenActions);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DateTime date,  List<HappenActionEntity> happenActions)?  $default,) {final _that = this;
switch (_that) {
case _DailyHappenActionEntity() when $default != null:
return $default(_that.date,_that.happenActions);case _:
  return null;

}
}

}

/// @nodoc


class _DailyHappenActionEntity implements DailyHappenActionEntity {
   _DailyHappenActionEntity({required this.date, required final  List<HappenActionEntity> happenActions}): _happenActions = happenActions;
  

@override final  DateTime date;
 final  List<HappenActionEntity> _happenActions;
@override List<HappenActionEntity> get happenActions {
  if (_happenActions is EqualUnmodifiableListView) return _happenActions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_happenActions);
}


/// Create a copy of DailyHappenActionEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DailyHappenActionEntityCopyWith<_DailyHappenActionEntity> get copyWith => __$DailyHappenActionEntityCopyWithImpl<_DailyHappenActionEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DailyHappenActionEntity&&(identical(other.date, date) || other.date == date)&&const DeepCollectionEquality().equals(other._happenActions, _happenActions));
}


@override
int get hashCode => Object.hash(runtimeType,date,const DeepCollectionEquality().hash(_happenActions));

@override
String toString() {
  return 'DailyHappenActionEntity(date: $date, happenActions: $happenActions)';
}


}

/// @nodoc
abstract mixin class _$DailyHappenActionEntityCopyWith<$Res> implements $DailyHappenActionEntityCopyWith<$Res> {
  factory _$DailyHappenActionEntityCopyWith(_DailyHappenActionEntity value, $Res Function(_DailyHappenActionEntity) _then) = __$DailyHappenActionEntityCopyWithImpl;
@override @useResult
$Res call({
 DateTime date, List<HappenActionEntity> happenActions
});




}
/// @nodoc
class __$DailyHappenActionEntityCopyWithImpl<$Res>
    implements _$DailyHappenActionEntityCopyWith<$Res> {
  __$DailyHappenActionEntityCopyWithImpl(this._self, this._then);

  final _DailyHappenActionEntity _self;
  final $Res Function(_DailyHappenActionEntity) _then;

/// Create a copy of DailyHappenActionEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? date = null,Object? happenActions = null,}) {
  return _then(_DailyHappenActionEntity(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,happenActions: null == happenActions ? _self._happenActions : happenActions // ignore: cast_nullable_to_non_nullable
as List<HappenActionEntity>,
  ));
}


}

// dart format on
