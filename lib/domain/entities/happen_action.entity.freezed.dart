// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'happen_action.entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HappenActionEntity {

 String get happen; String get action;
/// Create a copy of HappenActionEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HappenActionEntityCopyWith<HappenActionEntity> get copyWith => _$HappenActionEntityCopyWithImpl<HappenActionEntity>(this as HappenActionEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HappenActionEntity&&(identical(other.happen, happen) || other.happen == happen)&&(identical(other.action, action) || other.action == action));
}


@override
int get hashCode => Object.hash(runtimeType,happen,action);

@override
String toString() {
  return 'HappenActionEntity(happen: $happen, action: $action)';
}


}

/// @nodoc
abstract mixin class $HappenActionEntityCopyWith<$Res>  {
  factory $HappenActionEntityCopyWith(HappenActionEntity value, $Res Function(HappenActionEntity) _then) = _$HappenActionEntityCopyWithImpl;
@useResult
$Res call({
 String happen, String action
});




}
/// @nodoc
class _$HappenActionEntityCopyWithImpl<$Res>
    implements $HappenActionEntityCopyWith<$Res> {
  _$HappenActionEntityCopyWithImpl(this._self, this._then);

  final HappenActionEntity _self;
  final $Res Function(HappenActionEntity) _then;

/// Create a copy of HappenActionEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? happen = null,Object? action = null,}) {
  return _then(_self.copyWith(
happen: null == happen ? _self.happen : happen // ignore: cast_nullable_to_non_nullable
as String,action: null == action ? _self.action : action // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [HappenActionEntity].
extension HappenActionEntityPatterns on HappenActionEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HappenActionEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HappenActionEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HappenActionEntity value)  $default,){
final _that = this;
switch (_that) {
case _HappenActionEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HappenActionEntity value)?  $default,){
final _that = this;
switch (_that) {
case _HappenActionEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String happen,  String action)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HappenActionEntity() when $default != null:
return $default(_that.happen,_that.action);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String happen,  String action)  $default,) {final _that = this;
switch (_that) {
case _HappenActionEntity():
return $default(_that.happen,_that.action);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String happen,  String action)?  $default,) {final _that = this;
switch (_that) {
case _HappenActionEntity() when $default != null:
return $default(_that.happen,_that.action);case _:
  return null;

}
}

}

/// @nodoc


class _HappenActionEntity implements HappenActionEntity {
   _HappenActionEntity({required this.happen, required this.action});
  

@override final  String happen;
@override final  String action;

/// Create a copy of HappenActionEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HappenActionEntityCopyWith<_HappenActionEntity> get copyWith => __$HappenActionEntityCopyWithImpl<_HappenActionEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HappenActionEntity&&(identical(other.happen, happen) || other.happen == happen)&&(identical(other.action, action) || other.action == action));
}


@override
int get hashCode => Object.hash(runtimeType,happen,action);

@override
String toString() {
  return 'HappenActionEntity(happen: $happen, action: $action)';
}


}

/// @nodoc
abstract mixin class _$HappenActionEntityCopyWith<$Res> implements $HappenActionEntityCopyWith<$Res> {
  factory _$HappenActionEntityCopyWith(_HappenActionEntity value, $Res Function(_HappenActionEntity) _then) = __$HappenActionEntityCopyWithImpl;
@override @useResult
$Res call({
 String happen, String action
});




}
/// @nodoc
class __$HappenActionEntityCopyWithImpl<$Res>
    implements _$HappenActionEntityCopyWith<$Res> {
  __$HappenActionEntityCopyWithImpl(this._self, this._then);

  final _HappenActionEntity _self;
  final $Res Function(_HappenActionEntity) _then;

/// Create a copy of HappenActionEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? happen = null,Object? action = null,}) {
  return _then(_HappenActionEntity(
happen: null == happen ? _self.happen : happen // ignore: cast_nullable_to_non_nullable
as String,action: null == action ? _self.action : action // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
