// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_message.remote.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ApiMessageModel {

@JsonKey(name: 'content') dynamic get content;
/// Create a copy of ApiMessageModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ApiMessageModelCopyWith<ApiMessageModel> get copyWith => _$ApiMessageModelCopyWithImpl<ApiMessageModel>(this as ApiMessageModel, _$identity);

  /// Serializes this ApiMessageModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ApiMessageModel&&const DeepCollectionEquality().equals(other.content, content));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(content));

@override
String toString() {
  return 'ApiMessageModel(content: $content)';
}


}

/// @nodoc
abstract mixin class $ApiMessageModelCopyWith<$Res>  {
  factory $ApiMessageModelCopyWith(ApiMessageModel value, $Res Function(ApiMessageModel) _then) = _$ApiMessageModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'content') dynamic content
});




}
/// @nodoc
class _$ApiMessageModelCopyWithImpl<$Res>
    implements $ApiMessageModelCopyWith<$Res> {
  _$ApiMessageModelCopyWithImpl(this._self, this._then);

  final ApiMessageModel _self;
  final $Res Function(ApiMessageModel) _then;

/// Create a copy of ApiMessageModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? content = freezed,}) {
  return _then(_self.copyWith(
content: freezed == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

}


/// Adds pattern-matching-related methods to [ApiMessageModel].
extension ApiMessageModelPatterns on ApiMessageModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ApiMessageModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ApiMessageModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ApiMessageModel value)  $default,){
final _that = this;
switch (_that) {
case _ApiMessageModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ApiMessageModel value)?  $default,){
final _that = this;
switch (_that) {
case _ApiMessageModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'content')  dynamic content)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ApiMessageModel() when $default != null:
return $default(_that.content);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'content')  dynamic content)  $default,) {final _that = this;
switch (_that) {
case _ApiMessageModel():
return $default(_that.content);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'content')  dynamic content)?  $default,) {final _that = this;
switch (_that) {
case _ApiMessageModel() when $default != null:
return $default(_that.content);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ApiMessageModel implements ApiMessageModel {
   _ApiMessageModel({@JsonKey(name: 'content') required this.content});
  factory _ApiMessageModel.fromJson(Map<String, dynamic> json) => _$ApiMessageModelFromJson(json);

@override@JsonKey(name: 'content') final  dynamic content;

/// Create a copy of ApiMessageModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ApiMessageModelCopyWith<_ApiMessageModel> get copyWith => __$ApiMessageModelCopyWithImpl<_ApiMessageModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ApiMessageModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ApiMessageModel&&const DeepCollectionEquality().equals(other.content, content));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(content));

@override
String toString() {
  return 'ApiMessageModel(content: $content)';
}


}

/// @nodoc
abstract mixin class _$ApiMessageModelCopyWith<$Res> implements $ApiMessageModelCopyWith<$Res> {
  factory _$ApiMessageModelCopyWith(_ApiMessageModel value, $Res Function(_ApiMessageModel) _then) = __$ApiMessageModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'content') dynamic content
});




}
/// @nodoc
class __$ApiMessageModelCopyWithImpl<$Res>
    implements _$ApiMessageModelCopyWith<$Res> {
  __$ApiMessageModelCopyWithImpl(this._self, this._then);

  final _ApiMessageModel _self;
  final $Res Function(_ApiMessageModel) _then;

/// Create a copy of ApiMessageModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? content = freezed,}) {
  return _then(_ApiMessageModel(
content: freezed == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}

// dart format on
