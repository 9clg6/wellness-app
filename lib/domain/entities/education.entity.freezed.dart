// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'education.entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$EducationEntity {

 String get title; String get text; String get visual;
/// Create a copy of EducationEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EducationEntityCopyWith<EducationEntity> get copyWith => _$EducationEntityCopyWithImpl<EducationEntity>(this as EducationEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EducationEntity&&(identical(other.title, title) || other.title == title)&&(identical(other.text, text) || other.text == text)&&(identical(other.visual, visual) || other.visual == visual));
}


@override
int get hashCode => Object.hash(runtimeType,title,text,visual);

@override
String toString() {
  return 'EducationEntity(title: $title, text: $text, visual: $visual)';
}


}

/// @nodoc
abstract mixin class $EducationEntityCopyWith<$Res>  {
  factory $EducationEntityCopyWith(EducationEntity value, $Res Function(EducationEntity) _then) = _$EducationEntityCopyWithImpl;
@useResult
$Res call({
 String title, String text, String visual
});




}
/// @nodoc
class _$EducationEntityCopyWithImpl<$Res>
    implements $EducationEntityCopyWith<$Res> {
  _$EducationEntityCopyWithImpl(this._self, this._then);

  final EducationEntity _self;
  final $Res Function(EducationEntity) _then;

/// Create a copy of EducationEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? text = null,Object? visual = null,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,visual: null == visual ? _self.visual : visual // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [EducationEntity].
extension EducationEntityPatterns on EducationEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EducationEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EducationEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EducationEntity value)  $default,){
final _that = this;
switch (_that) {
case _EducationEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EducationEntity value)?  $default,){
final _that = this;
switch (_that) {
case _EducationEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title,  String text,  String visual)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EducationEntity() when $default != null:
return $default(_that.title,_that.text,_that.visual);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title,  String text,  String visual)  $default,) {final _that = this;
switch (_that) {
case _EducationEntity():
return $default(_that.title,_that.text,_that.visual);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title,  String text,  String visual)?  $default,) {final _that = this;
switch (_that) {
case _EducationEntity() when $default != null:
return $default(_that.title,_that.text,_that.visual);case _:
  return null;

}
}

}

/// @nodoc


class _EducationEntity implements EducationEntity {
   _EducationEntity({required this.title, required this.text, required this.visual});
  

@override final  String title;
@override final  String text;
@override final  String visual;

/// Create a copy of EducationEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EducationEntityCopyWith<_EducationEntity> get copyWith => __$EducationEntityCopyWithImpl<_EducationEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EducationEntity&&(identical(other.title, title) || other.title == title)&&(identical(other.text, text) || other.text == text)&&(identical(other.visual, visual) || other.visual == visual));
}


@override
int get hashCode => Object.hash(runtimeType,title,text,visual);

@override
String toString() {
  return 'EducationEntity(title: $title, text: $text, visual: $visual)';
}


}

/// @nodoc
abstract mixin class _$EducationEntityCopyWith<$Res> implements $EducationEntityCopyWith<$Res> {
  factory _$EducationEntityCopyWith(_EducationEntity value, $Res Function(_EducationEntity) _then) = __$EducationEntityCopyWithImpl;
@override @useResult
$Res call({
 String title, String text, String visual
});




}
/// @nodoc
class __$EducationEntityCopyWithImpl<$Res>
    implements _$EducationEntityCopyWith<$Res> {
  __$EducationEntityCopyWithImpl(this._self, this._then);

  final _EducationEntity _self;
  final $Res Function(_EducationEntity) _then;

/// Create a copy of EducationEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? text = null,Object? visual = null,}) {
  return _then(_EducationEntity(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,visual: null == visual ? _self.visual : visual // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
