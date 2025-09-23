// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paywall.step.state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PaywallStepState {

 List<Offering> get offerings;
/// Create a copy of PaywallStepState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaywallStepStateCopyWith<PaywallStepState> get copyWith => _$PaywallStepStateCopyWithImpl<PaywallStepState>(this as PaywallStepState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaywallStepState&&const DeepCollectionEquality().equals(other.offerings, offerings));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(offerings));

@override
String toString() {
  return 'PaywallStepState(offerings: $offerings)';
}


}

/// @nodoc
abstract mixin class $PaywallStepStateCopyWith<$Res>  {
  factory $PaywallStepStateCopyWith(PaywallStepState value, $Res Function(PaywallStepState) _then) = _$PaywallStepStateCopyWithImpl;
@useResult
$Res call({
 List<Offering> offerings
});




}
/// @nodoc
class _$PaywallStepStateCopyWithImpl<$Res>
    implements $PaywallStepStateCopyWith<$Res> {
  _$PaywallStepStateCopyWithImpl(this._self, this._then);

  final PaywallStepState _self;
  final $Res Function(PaywallStepState) _then;

/// Create a copy of PaywallStepState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? offerings = null,}) {
  return _then(_self.copyWith(
offerings: null == offerings ? _self.offerings : offerings // ignore: cast_nullable_to_non_nullable
as List<Offering>,
  ));
}

}


/// Adds pattern-matching-related methods to [PaywallStepState].
extension PaywallStepStatePatterns on PaywallStepState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaywallStepState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaywallStepState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaywallStepState value)  $default,){
final _that = this;
switch (_that) {
case _PaywallStepState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaywallStepState value)?  $default,){
final _that = this;
switch (_that) {
case _PaywallStepState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<Offering> offerings)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaywallStepState() when $default != null:
return $default(_that.offerings);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<Offering> offerings)  $default,) {final _that = this;
switch (_that) {
case _PaywallStepState():
return $default(_that.offerings);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<Offering> offerings)?  $default,) {final _that = this;
switch (_that) {
case _PaywallStepState() when $default != null:
return $default(_that.offerings);case _:
  return null;

}
}

}

/// @nodoc


class _PaywallStepState implements PaywallStepState {
  const _PaywallStepState({required final  List<Offering> offerings}): _offerings = offerings;
  

 final  List<Offering> _offerings;
@override List<Offering> get offerings {
  if (_offerings is EqualUnmodifiableListView) return _offerings;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_offerings);
}


/// Create a copy of PaywallStepState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaywallStepStateCopyWith<_PaywallStepState> get copyWith => __$PaywallStepStateCopyWithImpl<_PaywallStepState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaywallStepState&&const DeepCollectionEquality().equals(other._offerings, _offerings));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_offerings));

@override
String toString() {
  return 'PaywallStepState(offerings: $offerings)';
}


}

/// @nodoc
abstract mixin class _$PaywallStepStateCopyWith<$Res> implements $PaywallStepStateCopyWith<$Res> {
  factory _$PaywallStepStateCopyWith(_PaywallStepState value, $Res Function(_PaywallStepState) _then) = __$PaywallStepStateCopyWithImpl;
@override @useResult
$Res call({
 List<Offering> offerings
});




}
/// @nodoc
class __$PaywallStepStateCopyWithImpl<$Res>
    implements _$PaywallStepStateCopyWith<$Res> {
  __$PaywallStepStateCopyWithImpl(this._self, this._then);

  final _PaywallStepState _self;
  final $Res Function(_PaywallStepState) _then;

/// Create a copy of PaywallStepState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? offerings = null,}) {
  return _then(_PaywallStepState(
offerings: null == offerings ? _self._offerings : offerings // ignore: cast_nullable_to_non_nullable
as List<Offering>,
  ));
}


}

// dart format on
