// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'solution.entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SolutionScreenEntity {

 String get title; String get text; String get emoji;
/// Create a copy of SolutionScreenEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SolutionScreenEntityCopyWith<SolutionScreenEntity> get copyWith => _$SolutionScreenEntityCopyWithImpl<SolutionScreenEntity>(this as SolutionScreenEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SolutionScreenEntity&&(identical(other.title, title) || other.title == title)&&(identical(other.text, text) || other.text == text)&&(identical(other.emoji, emoji) || other.emoji == emoji));
}


@override
int get hashCode => Object.hash(runtimeType,title,text,emoji);

@override
String toString() {
  return 'SolutionScreenEntity(title: $title, text: $text, emoji: $emoji)';
}


}

/// @nodoc
abstract mixin class $SolutionScreenEntityCopyWith<$Res>  {
  factory $SolutionScreenEntityCopyWith(SolutionScreenEntity value, $Res Function(SolutionScreenEntity) _then) = _$SolutionScreenEntityCopyWithImpl;
@useResult
$Res call({
 String title, String text, String emoji
});




}
/// @nodoc
class _$SolutionScreenEntityCopyWithImpl<$Res>
    implements $SolutionScreenEntityCopyWith<$Res> {
  _$SolutionScreenEntityCopyWithImpl(this._self, this._then);

  final SolutionScreenEntity _self;
  final $Res Function(SolutionScreenEntity) _then;

/// Create a copy of SolutionScreenEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? text = null,Object? emoji = null,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,emoji: null == emoji ? _self.emoji : emoji // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SolutionScreenEntity].
extension SolutionScreenEntityPatterns on SolutionScreenEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SolutionScreenEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SolutionScreenEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SolutionScreenEntity value)  $default,){
final _that = this;
switch (_that) {
case _SolutionScreenEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SolutionScreenEntity value)?  $default,){
final _that = this;
switch (_that) {
case _SolutionScreenEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title,  String text,  String emoji)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SolutionScreenEntity() when $default != null:
return $default(_that.title,_that.text,_that.emoji);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title,  String text,  String emoji)  $default,) {final _that = this;
switch (_that) {
case _SolutionScreenEntity():
return $default(_that.title,_that.text,_that.emoji);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title,  String text,  String emoji)?  $default,) {final _that = this;
switch (_that) {
case _SolutionScreenEntity() when $default != null:
return $default(_that.title,_that.text,_that.emoji);case _:
  return null;

}
}

}

/// @nodoc


class _SolutionScreenEntity implements SolutionScreenEntity {
   _SolutionScreenEntity({required this.title, required this.text, required this.emoji});
  

@override final  String title;
@override final  String text;
@override final  String emoji;

/// Create a copy of SolutionScreenEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SolutionScreenEntityCopyWith<_SolutionScreenEntity> get copyWith => __$SolutionScreenEntityCopyWithImpl<_SolutionScreenEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SolutionScreenEntity&&(identical(other.title, title) || other.title == title)&&(identical(other.text, text) || other.text == text)&&(identical(other.emoji, emoji) || other.emoji == emoji));
}


@override
int get hashCode => Object.hash(runtimeType,title,text,emoji);

@override
String toString() {
  return 'SolutionScreenEntity(title: $title, text: $text, emoji: $emoji)';
}


}

/// @nodoc
abstract mixin class _$SolutionScreenEntityCopyWith<$Res> implements $SolutionScreenEntityCopyWith<$Res> {
  factory _$SolutionScreenEntityCopyWith(_SolutionScreenEntity value, $Res Function(_SolutionScreenEntity) _then) = __$SolutionScreenEntityCopyWithImpl;
@override @useResult
$Res call({
 String title, String text, String emoji
});




}
/// @nodoc
class __$SolutionScreenEntityCopyWithImpl<$Res>
    implements _$SolutionScreenEntityCopyWith<$Res> {
  __$SolutionScreenEntityCopyWithImpl(this._self, this._then);

  final _SolutionScreenEntity _self;
  final $Res Function(_SolutionScreenEntity) _then;

/// Create a copy of SolutionScreenEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? text = null,Object? emoji = null,}) {
  return _then(_SolutionScreenEntity(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,emoji: null == emoji ? _self.emoji : emoji // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
