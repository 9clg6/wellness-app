// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth.local.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AuthLocalModel {

@JsonKey(name: 'token') String? get token;
/// Create a copy of AuthLocalModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthLocalModelCopyWith<AuthLocalModel> get copyWith => _$AuthLocalModelCopyWithImpl<AuthLocalModel>(this as AuthLocalModel, _$identity);

  /// Serializes this AuthLocalModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthLocalModel&&(identical(other.token, token) || other.token == token));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,token);

@override
String toString() {
  return 'AuthLocalModel(token: $token)';
}


}

/// @nodoc
abstract mixin class $AuthLocalModelCopyWith<$Res>  {
  factory $AuthLocalModelCopyWith(AuthLocalModel value, $Res Function(AuthLocalModel) _then) = _$AuthLocalModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'token') String? token
});




}
/// @nodoc
class _$AuthLocalModelCopyWithImpl<$Res>
    implements $AuthLocalModelCopyWith<$Res> {
  _$AuthLocalModelCopyWithImpl(this._self, this._then);

  final AuthLocalModel _self;
  final $Res Function(AuthLocalModel) _then;

/// Create a copy of AuthLocalModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? token = freezed,}) {
  return _then(_self.copyWith(
token: freezed == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AuthLocalModel].
extension AuthLocalModelPatterns on AuthLocalModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AuthLocalModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuthLocalModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AuthLocalModel value)  $default,){
final _that = this;
switch (_that) {
case _AuthLocalModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AuthLocalModel value)?  $default,){
final _that = this;
switch (_that) {
case _AuthLocalModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'token')  String? token)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuthLocalModel() when $default != null:
return $default(_that.token);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'token')  String? token)  $default,) {final _that = this;
switch (_that) {
case _AuthLocalModel():
return $default(_that.token);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'token')  String? token)?  $default,) {final _that = this;
switch (_that) {
case _AuthLocalModel() when $default != null:
return $default(_that.token);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AuthLocalModel implements AuthLocalModel {
   _AuthLocalModel({@JsonKey(name: 'token') required this.token});
  factory _AuthLocalModel.fromJson(Map<String, dynamic> json) => _$AuthLocalModelFromJson(json);

@override@JsonKey(name: 'token') final  String? token;

/// Create a copy of AuthLocalModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthLocalModelCopyWith<_AuthLocalModel> get copyWith => __$AuthLocalModelCopyWithImpl<_AuthLocalModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AuthLocalModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthLocalModel&&(identical(other.token, token) || other.token == token));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,token);

@override
String toString() {
  return 'AuthLocalModel(token: $token)';
}


}

/// @nodoc
abstract mixin class _$AuthLocalModelCopyWith<$Res> implements $AuthLocalModelCopyWith<$Res> {
  factory _$AuthLocalModelCopyWith(_AuthLocalModel value, $Res Function(_AuthLocalModel) _then) = __$AuthLocalModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'token') String? token
});




}
/// @nodoc
class __$AuthLocalModelCopyWithImpl<$Res>
    implements _$AuthLocalModelCopyWith<$Res> {
  __$AuthLocalModelCopyWithImpl(this._self, this._then);

  final _AuthLocalModel _self;
  final $Res Function(_AuthLocalModel) _then;

/// Create a copy of AuthLocalModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? token = freezed,}) {
  return _then(_AuthLocalModel(
token: freezed == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
