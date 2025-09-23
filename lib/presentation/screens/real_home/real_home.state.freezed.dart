// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'real_home.state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RealHomeState {

 String get surname; bool get isTodayEventsFilled; bool get doesReportExist;
/// Create a copy of RealHomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RealHomeStateCopyWith<RealHomeState> get copyWith => _$RealHomeStateCopyWithImpl<RealHomeState>(this as RealHomeState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RealHomeState&&(identical(other.surname, surname) || other.surname == surname)&&(identical(other.isTodayEventsFilled, isTodayEventsFilled) || other.isTodayEventsFilled == isTodayEventsFilled)&&(identical(other.doesReportExist, doesReportExist) || other.doesReportExist == doesReportExist));
}


@override
int get hashCode => Object.hash(runtimeType,surname,isTodayEventsFilled,doesReportExist);

@override
String toString() {
  return 'RealHomeState(surname: $surname, isTodayEventsFilled: $isTodayEventsFilled, doesReportExist: $doesReportExist)';
}


}

/// @nodoc
abstract mixin class $RealHomeStateCopyWith<$Res>  {
  factory $RealHomeStateCopyWith(RealHomeState value, $Res Function(RealHomeState) _then) = _$RealHomeStateCopyWithImpl;
@useResult
$Res call({
 String surname, bool isTodayEventsFilled, bool doesReportExist
});




}
/// @nodoc
class _$RealHomeStateCopyWithImpl<$Res>
    implements $RealHomeStateCopyWith<$Res> {
  _$RealHomeStateCopyWithImpl(this._self, this._then);

  final RealHomeState _self;
  final $Res Function(RealHomeState) _then;

/// Create a copy of RealHomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? surname = null,Object? isTodayEventsFilled = null,Object? doesReportExist = null,}) {
  return _then(_self.copyWith(
surname: null == surname ? _self.surname : surname // ignore: cast_nullable_to_non_nullable
as String,isTodayEventsFilled: null == isTodayEventsFilled ? _self.isTodayEventsFilled : isTodayEventsFilled // ignore: cast_nullable_to_non_nullable
as bool,doesReportExist: null == doesReportExist ? _self.doesReportExist : doesReportExist // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [RealHomeState].
extension RealHomeStatePatterns on RealHomeState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RealHomeState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RealHomeState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RealHomeState value)  $default,){
final _that = this;
switch (_that) {
case _RealHomeState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RealHomeState value)?  $default,){
final _that = this;
switch (_that) {
case _RealHomeState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String surname,  bool isTodayEventsFilled,  bool doesReportExist)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RealHomeState() when $default != null:
return $default(_that.surname,_that.isTodayEventsFilled,_that.doesReportExist);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String surname,  bool isTodayEventsFilled,  bool doesReportExist)  $default,) {final _that = this;
switch (_that) {
case _RealHomeState():
return $default(_that.surname,_that.isTodayEventsFilled,_that.doesReportExist);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String surname,  bool isTodayEventsFilled,  bool doesReportExist)?  $default,) {final _that = this;
switch (_that) {
case _RealHomeState() when $default != null:
return $default(_that.surname,_that.isTodayEventsFilled,_that.doesReportExist);case _:
  return null;

}
}

}

/// @nodoc


class _RealHomeState implements RealHomeState {
  const _RealHomeState({required this.surname, required this.isTodayEventsFilled, required this.doesReportExist});
  

@override final  String surname;
@override final  bool isTodayEventsFilled;
@override final  bool doesReportExist;

/// Create a copy of RealHomeState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RealHomeStateCopyWith<_RealHomeState> get copyWith => __$RealHomeStateCopyWithImpl<_RealHomeState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RealHomeState&&(identical(other.surname, surname) || other.surname == surname)&&(identical(other.isTodayEventsFilled, isTodayEventsFilled) || other.isTodayEventsFilled == isTodayEventsFilled)&&(identical(other.doesReportExist, doesReportExist) || other.doesReportExist == doesReportExist));
}


@override
int get hashCode => Object.hash(runtimeType,surname,isTodayEventsFilled,doesReportExist);

@override
String toString() {
  return 'RealHomeState(surname: $surname, isTodayEventsFilled: $isTodayEventsFilled, doesReportExist: $doesReportExist)';
}


}

/// @nodoc
abstract mixin class _$RealHomeStateCopyWith<$Res> implements $RealHomeStateCopyWith<$Res> {
  factory _$RealHomeStateCopyWith(_RealHomeState value, $Res Function(_RealHomeState) _then) = __$RealHomeStateCopyWithImpl;
@override @useResult
$Res call({
 String surname, bool isTodayEventsFilled, bool doesReportExist
});




}
/// @nodoc
class __$RealHomeStateCopyWithImpl<$Res>
    implements _$RealHomeStateCopyWith<$Res> {
  __$RealHomeStateCopyWithImpl(this._self, this._then);

  final _RealHomeState _self;
  final $Res Function(_RealHomeState) _then;

/// Create a copy of RealHomeState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? surname = null,Object? isTodayEventsFilled = null,Object? doesReportExist = null,}) {
  return _then(_RealHomeState(
surname: null == surname ? _self.surname : surname // ignore: cast_nullable_to_non_nullable
as String,isTodayEventsFilled: null == isTodayEventsFilled ? _self.isTodayEventsFilled : isTodayEventsFilled // ignore: cast_nullable_to_non_nullable
as bool,doesReportExist: null == doesReportExist ? _self.doesReportExist : doesReportExist // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
