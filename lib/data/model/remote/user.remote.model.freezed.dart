// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.remote.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserRemoteModel {

 int? get id; String? get email; String? get nickname; String? get lastname; String? get firstname;
/// Create a copy of UserRemoteModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserRemoteModelCopyWith<UserRemoteModel> get copyWith => _$UserRemoteModelCopyWithImpl<UserRemoteModel>(this as UserRemoteModel, _$identity);

  /// Serializes this UserRemoteModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserRemoteModel&&(identical(other.id, id) || other.id == id)&&(identical(other.email, email) || other.email == email)&&(identical(other.nickname, nickname) || other.nickname == nickname)&&(identical(other.lastname, lastname) || other.lastname == lastname)&&(identical(other.firstname, firstname) || other.firstname == firstname));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,email,nickname,lastname,firstname);

@override
String toString() {
  return 'UserRemoteModel(id: $id, email: $email, nickname: $nickname, lastname: $lastname, firstname: $firstname)';
}


}

/// @nodoc
abstract mixin class $UserRemoteModelCopyWith<$Res>  {
  factory $UserRemoteModelCopyWith(UserRemoteModel value, $Res Function(UserRemoteModel) _then) = _$UserRemoteModelCopyWithImpl;
@useResult
$Res call({
 int? id, String? email, String? nickname, String? lastname, String? firstname
});




}
/// @nodoc
class _$UserRemoteModelCopyWithImpl<$Res>
    implements $UserRemoteModelCopyWith<$Res> {
  _$UserRemoteModelCopyWithImpl(this._self, this._then);

  final UserRemoteModel _self;
  final $Res Function(UserRemoteModel) _then;

/// Create a copy of UserRemoteModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? email = freezed,Object? nickname = freezed,Object? lastname = freezed,Object? firstname = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,nickname: freezed == nickname ? _self.nickname : nickname // ignore: cast_nullable_to_non_nullable
as String?,lastname: freezed == lastname ? _self.lastname : lastname // ignore: cast_nullable_to_non_nullable
as String?,firstname: freezed == firstname ? _self.firstname : firstname // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [UserRemoteModel].
extension UserRemoteModelPatterns on UserRemoteModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserRemoteModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserRemoteModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserRemoteModel value)  $default,){
final _that = this;
switch (_that) {
case _UserRemoteModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserRemoteModel value)?  $default,){
final _that = this;
switch (_that) {
case _UserRemoteModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? email,  String? nickname,  String? lastname,  String? firstname)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserRemoteModel() when $default != null:
return $default(_that.id,_that.email,_that.nickname,_that.lastname,_that.firstname);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? email,  String? nickname,  String? lastname,  String? firstname)  $default,) {final _that = this;
switch (_that) {
case _UserRemoteModel():
return $default(_that.id,_that.email,_that.nickname,_that.lastname,_that.firstname);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? email,  String? nickname,  String? lastname,  String? firstname)?  $default,) {final _that = this;
switch (_that) {
case _UserRemoteModel() when $default != null:
return $default(_that.id,_that.email,_that.nickname,_that.lastname,_that.firstname);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserRemoteModel implements UserRemoteModel {
   _UserRemoteModel({this.id, this.email, this.nickname, this.lastname, this.firstname});
  factory _UserRemoteModel.fromJson(Map<String, dynamic> json) => _$UserRemoteModelFromJson(json);

@override final  int? id;
@override final  String? email;
@override final  String? nickname;
@override final  String? lastname;
@override final  String? firstname;

/// Create a copy of UserRemoteModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserRemoteModelCopyWith<_UserRemoteModel> get copyWith => __$UserRemoteModelCopyWithImpl<_UserRemoteModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserRemoteModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserRemoteModel&&(identical(other.id, id) || other.id == id)&&(identical(other.email, email) || other.email == email)&&(identical(other.nickname, nickname) || other.nickname == nickname)&&(identical(other.lastname, lastname) || other.lastname == lastname)&&(identical(other.firstname, firstname) || other.firstname == firstname));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,email,nickname,lastname,firstname);

@override
String toString() {
  return 'UserRemoteModel(id: $id, email: $email, nickname: $nickname, lastname: $lastname, firstname: $firstname)';
}


}

/// @nodoc
abstract mixin class _$UserRemoteModelCopyWith<$Res> implements $UserRemoteModelCopyWith<$Res> {
  factory _$UserRemoteModelCopyWith(_UserRemoteModel value, $Res Function(_UserRemoteModel) _then) = __$UserRemoteModelCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? email, String? nickname, String? lastname, String? firstname
});




}
/// @nodoc
class __$UserRemoteModelCopyWithImpl<$Res>
    implements _$UserRemoteModelCopyWith<$Res> {
  __$UserRemoteModelCopyWithImpl(this._self, this._then);

  final _UserRemoteModel _self;
  final $Res Function(_UserRemoteModel) _then;

/// Create a copy of UserRemoteModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? email = freezed,Object? nickname = freezed,Object? lastname = freezed,Object? firstname = freezed,}) {
  return _then(_UserRemoteModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,nickname: freezed == nickname ? _self.nickname : nickname // ignore: cast_nullable_to_non_nullable
as String?,lastname: freezed == lastname ? _self.lastname : lastname // ignore: cast_nullable_to_non_nullable
as String?,firstname: freezed == firstname ? _self.firstname : firstname // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
