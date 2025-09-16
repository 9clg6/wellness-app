// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'testimonial.entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Testimonial {

 String get quote; String get author; String get source; int get year; String get emoji;
/// Create a copy of Testimonial
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TestimonialCopyWith<Testimonial> get copyWith => _$TestimonialCopyWithImpl<Testimonial>(this as Testimonial, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Testimonial&&(identical(other.quote, quote) || other.quote == quote)&&(identical(other.author, author) || other.author == author)&&(identical(other.source, source) || other.source == source)&&(identical(other.year, year) || other.year == year)&&(identical(other.emoji, emoji) || other.emoji == emoji));
}


@override
int get hashCode => Object.hash(runtimeType,quote,author,source,year,emoji);

@override
String toString() {
  return 'Testimonial(quote: $quote, author: $author, source: $source, year: $year, emoji: $emoji)';
}


}

/// @nodoc
abstract mixin class $TestimonialCopyWith<$Res>  {
  factory $TestimonialCopyWith(Testimonial value, $Res Function(Testimonial) _then) = _$TestimonialCopyWithImpl;
@useResult
$Res call({
 String quote, String author, String source, int year, String emoji
});




}
/// @nodoc
class _$TestimonialCopyWithImpl<$Res>
    implements $TestimonialCopyWith<$Res> {
  _$TestimonialCopyWithImpl(this._self, this._then);

  final Testimonial _self;
  final $Res Function(Testimonial) _then;

/// Create a copy of Testimonial
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? quote = null,Object? author = null,Object? source = null,Object? year = null,Object? emoji = null,}) {
  return _then(_self.copyWith(
quote: null == quote ? _self.quote : quote // ignore: cast_nullable_to_non_nullable
as String,author: null == author ? _self.author : author // ignore: cast_nullable_to_non_nullable
as String,source: null == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as String,year: null == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as int,emoji: null == emoji ? _self.emoji : emoji // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Testimonial].
extension TestimonialPatterns on Testimonial {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Testimonial value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Testimonial() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Testimonial value)  $default,){
final _that = this;
switch (_that) {
case _Testimonial():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Testimonial value)?  $default,){
final _that = this;
switch (_that) {
case _Testimonial() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String quote,  String author,  String source,  int year,  String emoji)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Testimonial() when $default != null:
return $default(_that.quote,_that.author,_that.source,_that.year,_that.emoji);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String quote,  String author,  String source,  int year,  String emoji)  $default,) {final _that = this;
switch (_that) {
case _Testimonial():
return $default(_that.quote,_that.author,_that.source,_that.year,_that.emoji);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String quote,  String author,  String source,  int year,  String emoji)?  $default,) {final _that = this;
switch (_that) {
case _Testimonial() when $default != null:
return $default(_that.quote,_that.author,_that.source,_that.year,_that.emoji);case _:
  return null;

}
}

}

/// @nodoc


class _Testimonial implements Testimonial {
   _Testimonial({required this.quote, required this.author, required this.source, required this.year, required this.emoji});
  

@override final  String quote;
@override final  String author;
@override final  String source;
@override final  int year;
@override final  String emoji;

/// Create a copy of Testimonial
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TestimonialCopyWith<_Testimonial> get copyWith => __$TestimonialCopyWithImpl<_Testimonial>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Testimonial&&(identical(other.quote, quote) || other.quote == quote)&&(identical(other.author, author) || other.author == author)&&(identical(other.source, source) || other.source == source)&&(identical(other.year, year) || other.year == year)&&(identical(other.emoji, emoji) || other.emoji == emoji));
}


@override
int get hashCode => Object.hash(runtimeType,quote,author,source,year,emoji);

@override
String toString() {
  return 'Testimonial(quote: $quote, author: $author, source: $source, year: $year, emoji: $emoji)';
}


}

/// @nodoc
abstract mixin class _$TestimonialCopyWith<$Res> implements $TestimonialCopyWith<$Res> {
  factory _$TestimonialCopyWith(_Testimonial value, $Res Function(_Testimonial) _then) = __$TestimonialCopyWithImpl;
@override @useResult
$Res call({
 String quote, String author, String source, int year, String emoji
});




}
/// @nodoc
class __$TestimonialCopyWithImpl<$Res>
    implements _$TestimonialCopyWith<$Res> {
  __$TestimonialCopyWithImpl(this._self, this._then);

  final _Testimonial _self;
  final $Res Function(_Testimonial) _then;

/// Create a copy of Testimonial
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? quote = null,Object? author = null,Object? source = null,Object? year = null,Object? emoji = null,}) {
  return _then(_Testimonial(
quote: null == quote ? _self.quote : quote // ignore: cast_nullable_to_non_nullable
as String,author: null == author ? _self.author : author // ignore: cast_nullable_to_non_nullable
as String,source: null == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as String,year: null == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as int,emoji: null == emoji ? _self.emoji : emoji // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
