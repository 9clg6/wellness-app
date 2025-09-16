// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.local.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserLocalModel {

@JsonKey(name: 'id') int? get id;@JsonKey(name: 'email') String? get email;@JsonKey(name: 'nickname') String? get nickname;@JsonKey(name: 'lastname') String? get lastname;@JsonKey(name: 'firstname') String? get firstname;@JsonKey(name: 'isOnboardingCompleted') bool? get isOnboardingCompleted;@JsonKey(name: 'streakDays') int get streakDays;
/// Create a copy of UserLocalModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserLocalModelCopyWith<UserLocalModel> get copyWith => _$UserLocalModelCopyWithImpl<UserLocalModel>(this as UserLocalModel, _$identity);

  /// Serializes this UserLocalModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserLocalModel&&(identical(other.id, id) || other.id == id)&&(identical(other.email, email) || other.email == email)&&(identical(other.nickname, nickname) || other.nickname == nickname)&&(identical(other.lastname, lastname) || other.lastname == lastname)&&(identical(other.firstname, firstname) || other.firstname == firstname)&&(identical(other.isOnboardingCompleted, isOnboardingCompleted) || other.isOnboardingCompleted == isOnboardingCompleted)&&(identical(other.streakDays, streakDays) || other.streakDays == streakDays));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,email,nickname,lastname,firstname,isOnboardingCompleted,streakDays);

@override
String toString() {
  return 'UserLocalModel(id: $id, email: $email, nickname: $nickname, lastname: $lastname, firstname: $firstname, isOnboardingCompleted: $isOnboardingCompleted, streakDays: $streakDays)';
}


}

/// @nodoc
abstract mixin class $UserLocalModelCopyWith<$Res>  {
  factory $UserLocalModelCopyWith(UserLocalModel value, $Res Function(UserLocalModel) _then) = _$UserLocalModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'email') String? email,@JsonKey(name: 'nickname') String? nickname,@JsonKey(name: 'lastname') String? lastname,@JsonKey(name: 'firstname') String? firstname,@JsonKey(name: 'isOnboardingCompleted') bool? isOnboardingCompleted,@JsonKey(name: 'streakDays') int streakDays
});




}
/// @nodoc
class _$UserLocalModelCopyWithImpl<$Res>
    implements $UserLocalModelCopyWith<$Res> {
  _$UserLocalModelCopyWithImpl(this._self, this._then);

  final UserLocalModel _self;
  final $Res Function(UserLocalModel) _then;

/// Create a copy of UserLocalModel
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


/// Adds pattern-matching-related methods to [UserLocalModel].
extension UserLocalModelPatterns on UserLocalModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserLocalModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserLocalModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserLocalModel value)  $default,){
final _that = this;
switch (_that) {
case _UserLocalModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserLocalModel value)?  $default,){
final _that = this;
switch (_that) {
case _UserLocalModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'email')  String? email, @JsonKey(name: 'nickname')  String? nickname, @JsonKey(name: 'lastname')  String? lastname, @JsonKey(name: 'firstname')  String? firstname, @JsonKey(name: 'isOnboardingCompleted')  bool? isOnboardingCompleted, @JsonKey(name: 'streakDays')  int streakDays)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserLocalModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'email')  String? email, @JsonKey(name: 'nickname')  String? nickname, @JsonKey(name: 'lastname')  String? lastname, @JsonKey(name: 'firstname')  String? firstname, @JsonKey(name: 'isOnboardingCompleted')  bool? isOnboardingCompleted, @JsonKey(name: 'streakDays')  int streakDays)  $default,) {final _that = this;
switch (_that) {
case _UserLocalModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'email')  String? email, @JsonKey(name: 'nickname')  String? nickname, @JsonKey(name: 'lastname')  String? lastname, @JsonKey(name: 'firstname')  String? firstname, @JsonKey(name: 'isOnboardingCompleted')  bool? isOnboardingCompleted, @JsonKey(name: 'streakDays')  int streakDays)?  $default,) {final _that = this;
switch (_that) {
case _UserLocalModel() when $default != null:
return $default(_that.id,_that.email,_that.nickname,_that.lastname,_that.firstname,_that.isOnboardingCompleted,_that.streakDays);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserLocalModel implements UserLocalModel {
   _UserLocalModel({@JsonKey(name: 'id') required this.id, @JsonKey(name: 'email') required this.email, @JsonKey(name: 'nickname') required this.nickname, @JsonKey(name: 'lastname') required this.lastname, @JsonKey(name: 'firstname') required this.firstname, @JsonKey(name: 'isOnboardingCompleted') required this.isOnboardingCompleted, @JsonKey(name: 'streakDays') required this.streakDays});
  factory _UserLocalModel.fromJson(Map<String, dynamic> json) => _$UserLocalModelFromJson(json);

@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'email') final  String? email;
@override@JsonKey(name: 'nickname') final  String? nickname;
@override@JsonKey(name: 'lastname') final  String? lastname;
@override@JsonKey(name: 'firstname') final  String? firstname;
@override@JsonKey(name: 'isOnboardingCompleted') final  bool? isOnboardingCompleted;
@override@JsonKey(name: 'streakDays') final  int streakDays;

/// Create a copy of UserLocalModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserLocalModelCopyWith<_UserLocalModel> get copyWith => __$UserLocalModelCopyWithImpl<_UserLocalModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserLocalModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserLocalModel&&(identical(other.id, id) || other.id == id)&&(identical(other.email, email) || other.email == email)&&(identical(other.nickname, nickname) || other.nickname == nickname)&&(identical(other.lastname, lastname) || other.lastname == lastname)&&(identical(other.firstname, firstname) || other.firstname == firstname)&&(identical(other.isOnboardingCompleted, isOnboardingCompleted) || other.isOnboardingCompleted == isOnboardingCompleted)&&(identical(other.streakDays, streakDays) || other.streakDays == streakDays));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,email,nickname,lastname,firstname,isOnboardingCompleted,streakDays);

@override
String toString() {
  return 'UserLocalModel(id: $id, email: $email, nickname: $nickname, lastname: $lastname, firstname: $firstname, isOnboardingCompleted: $isOnboardingCompleted, streakDays: $streakDays)';
}


}

/// @nodoc
abstract mixin class _$UserLocalModelCopyWith<$Res> implements $UserLocalModelCopyWith<$Res> {
  factory _$UserLocalModelCopyWith(_UserLocalModel value, $Res Function(_UserLocalModel) _then) = __$UserLocalModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'email') String? email,@JsonKey(name: 'nickname') String? nickname,@JsonKey(name: 'lastname') String? lastname,@JsonKey(name: 'firstname') String? firstname,@JsonKey(name: 'isOnboardingCompleted') bool? isOnboardingCompleted,@JsonKey(name: 'streakDays') int streakDays
});




}
/// @nodoc
class __$UserLocalModelCopyWithImpl<$Res>
    implements _$UserLocalModelCopyWith<$Res> {
  __$UserLocalModelCopyWithImpl(this._self, this._then);

  final _UserLocalModel _self;
  final $Res Function(_UserLocalModel) _then;

/// Create a copy of UserLocalModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? email = freezed,Object? nickname = freezed,Object? lastname = freezed,Object? firstname = freezed,Object? isOnboardingCompleted = freezed,Object? streakDays = null,}) {
  return _then(_UserLocalModel(
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
