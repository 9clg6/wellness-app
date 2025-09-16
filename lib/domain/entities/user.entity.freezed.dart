// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UserEntity {

 int? get id; String? get email; String? get nickname; String? get lastname; String? get firstname; bool? get isOnboardingCompleted; int get streakDays;
/// Create a copy of UserEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserEntityCopyWith<UserEntity> get copyWith => _$UserEntityCopyWithImpl<UserEntity>(this as UserEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.email, email) || other.email == email)&&(identical(other.nickname, nickname) || other.nickname == nickname)&&(identical(other.lastname, lastname) || other.lastname == lastname)&&(identical(other.firstname, firstname) || other.firstname == firstname)&&(identical(other.isOnboardingCompleted, isOnboardingCompleted) || other.isOnboardingCompleted == isOnboardingCompleted)&&(identical(other.streakDays, streakDays) || other.streakDays == streakDays));
}


@override
int get hashCode => Object.hash(runtimeType,id,email,nickname,lastname,firstname,isOnboardingCompleted,streakDays);



}

/// @nodoc
abstract mixin class $UserEntityCopyWith<$Res>  {
  factory $UserEntityCopyWith(UserEntity value, $Res Function(UserEntity) _then) = _$UserEntityCopyWithImpl;
@useResult
$Res call({
 int? id, String? email, String? nickname, String? lastname, String? firstname, bool? isOnboardingCompleted, int streakDays
});




}
/// @nodoc
class _$UserEntityCopyWithImpl<$Res>
    implements $UserEntityCopyWith<$Res> {
  _$UserEntityCopyWithImpl(this._self, this._then);

  final UserEntity _self;
  final $Res Function(UserEntity) _then;

/// Create a copy of UserEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? email = freezed,Object? nickname = freezed,Object? lastname = freezed,Object? firstname = freezed,Object? isOnboardingCompleted = freezed,Object? streakDays = null,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,nickname: freezed == nickname ? _self.nickname : nickname // ignore: cast_nullable_to_non_nullable
as String?,lastname: freezed == lastname ? _self.lastname : lastname // ignore: cast_nullable_to_non_nullable
as String?,firstname: freezed == firstname ? _self.firstname : firstname // ignore: cast_nullable_to_non_nullable
as String?,isOnboardingCompleted: freezed == isOnboardingCompleted ? _self.isOnboardingCompleted : isOnboardingCompleted // ignore: cast_nullable_to_non_nullable
as bool?,streakDays: null == streakDays ? _self.streakDays : streakDays // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [UserEntity].
extension UserEntityPatterns on UserEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserEntity value)  $default,){
final _that = this;
switch (_that) {
case _UserEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserEntity value)?  $default,){
final _that = this;
switch (_that) {
case _UserEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? email,  String? nickname,  String? lastname,  String? firstname,  bool? isOnboardingCompleted,  int streakDays)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserEntity() when $default != null:
return $default(_that.id,_that.email,_that.nickname,_that.lastname,_that.firstname,_that.isOnboardingCompleted,_that.streakDays);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? email,  String? nickname,  String? lastname,  String? firstname,  bool? isOnboardingCompleted,  int streakDays)  $default,) {final _that = this;
switch (_that) {
case _UserEntity():
return $default(_that.id,_that.email,_that.nickname,_that.lastname,_that.firstname,_that.isOnboardingCompleted,_that.streakDays);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? email,  String? nickname,  String? lastname,  String? firstname,  bool? isOnboardingCompleted,  int streakDays)?  $default,) {final _that = this;
switch (_that) {
case _UserEntity() when $default != null:
return $default(_that.id,_that.email,_that.nickname,_that.lastname,_that.firstname,_that.isOnboardingCompleted,_that.streakDays);case _:
  return null;

}
}

}

/// @nodoc


class _UserEntity implements UserEntity {
   _UserEntity({this.id, this.email, this.nickname, this.lastname, this.firstname, this.isOnboardingCompleted, this.streakDays = 0});
  

@override final  int? id;
@override final  String? email;
@override final  String? nickname;
@override final  String? lastname;
@override final  String? firstname;
@override final  bool? isOnboardingCompleted;
@override@JsonKey() final  int streakDays;

/// Create a copy of UserEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserEntityCopyWith<_UserEntity> get copyWith => __$UserEntityCopyWithImpl<_UserEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.email, email) || other.email == email)&&(identical(other.nickname, nickname) || other.nickname == nickname)&&(identical(other.lastname, lastname) || other.lastname == lastname)&&(identical(other.firstname, firstname) || other.firstname == firstname)&&(identical(other.isOnboardingCompleted, isOnboardingCompleted) || other.isOnboardingCompleted == isOnboardingCompleted)&&(identical(other.streakDays, streakDays) || other.streakDays == streakDays));
}


@override
int get hashCode => Object.hash(runtimeType,id,email,nickname,lastname,firstname,isOnboardingCompleted,streakDays);



}

/// @nodoc
abstract mixin class _$UserEntityCopyWith<$Res> implements $UserEntityCopyWith<$Res> {
  factory _$UserEntityCopyWith(_UserEntity value, $Res Function(_UserEntity) _then) = __$UserEntityCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? email, String? nickname, String? lastname, String? firstname, bool? isOnboardingCompleted, int streakDays
});




}
/// @nodoc
class __$UserEntityCopyWithImpl<$Res>
    implements _$UserEntityCopyWith<$Res> {
  __$UserEntityCopyWithImpl(this._self, this._then);

  final _UserEntity _self;
  final $Res Function(_UserEntity) _then;

/// Create a copy of UserEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? email = freezed,Object? nickname = freezed,Object? lastname = freezed,Object? firstname = freezed,Object? isOnboardingCompleted = freezed,Object? streakDays = null,}) {
  return _then(_UserEntity(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,nickname: freezed == nickname ? _self.nickname : nickname // ignore: cast_nullable_to_non_nullable
as String?,lastname: freezed == lastname ? _self.lastname : lastname // ignore: cast_nullable_to_non_nullable
as String?,firstname: freezed == firstname ? _self.firstname : firstname // ignore: cast_nullable_to_non_nullable
as String?,isOnboardingCompleted: freezed == isOnboardingCompleted ? _self.isOnboardingCompleted : isOnboardingCompleted // ignore: cast_nullable_to_non_nullable
as bool?,streakDays: null == streakDays ? _self.streakDays : streakDays // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
