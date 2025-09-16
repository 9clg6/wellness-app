// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_response_wrapper.remote.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ApiResponseWrapper {

@JsonKey(name: 'output') List<ApiMessageModel> get output;
/// Create a copy of ApiResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ApiResponseWrapperCopyWith<ApiResponseWrapper> get copyWith => _$ApiResponseWrapperCopyWithImpl<ApiResponseWrapper>(this as ApiResponseWrapper, _$identity);

  /// Serializes this ApiResponseWrapper to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ApiResponseWrapper&&const DeepCollectionEquality().equals(other.output, output));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(output));

@override
String toString() {
  return 'ApiResponseWrapper(output: $output)';
}


}

/// @nodoc
abstract mixin class $ApiResponseWrapperCopyWith<$Res>  {
  factory $ApiResponseWrapperCopyWith(ApiResponseWrapper value, $Res Function(ApiResponseWrapper) _then) = _$ApiResponseWrapperCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'output') List<ApiMessageModel> output
});




}
/// @nodoc
class _$ApiResponseWrapperCopyWithImpl<$Res>
    implements $ApiResponseWrapperCopyWith<$Res> {
  _$ApiResponseWrapperCopyWithImpl(this._self, this._then);

  final ApiResponseWrapper _self;
  final $Res Function(ApiResponseWrapper) _then;

/// Create a copy of ApiResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? output = null,}) {
  return _then(_self.copyWith(
output: null == output ? _self.output : output // ignore: cast_nullable_to_non_nullable
as List<ApiMessageModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [ApiResponseWrapper].
extension ApiResponseWrapperPatterns on ApiResponseWrapper {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ApiResponseWrapper value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ApiResponseWrapper() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ApiResponseWrapper value)  $default,){
final _that = this;
switch (_that) {
case _ApiResponseWrapper():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ApiResponseWrapper value)?  $default,){
final _that = this;
switch (_that) {
case _ApiResponseWrapper() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'output')  List<ApiMessageModel> output)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ApiResponseWrapper() when $default != null:
return $default(_that.output);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'output')  List<ApiMessageModel> output)  $default,) {final _that = this;
switch (_that) {
case _ApiResponseWrapper():
return $default(_that.output);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'output')  List<ApiMessageModel> output)?  $default,) {final _that = this;
switch (_that) {
case _ApiResponseWrapper() when $default != null:
return $default(_that.output);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ApiResponseWrapper implements ApiResponseWrapper {
   _ApiResponseWrapper({@JsonKey(name: 'output') required final  List<ApiMessageModel> output}): _output = output;
  factory _ApiResponseWrapper.fromJson(Map<String, dynamic> json) => _$ApiResponseWrapperFromJson(json);

 final  List<ApiMessageModel> _output;
@override@JsonKey(name: 'output') List<ApiMessageModel> get output {
  if (_output is EqualUnmodifiableListView) return _output;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_output);
}


/// Create a copy of ApiResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ApiResponseWrapperCopyWith<_ApiResponseWrapper> get copyWith => __$ApiResponseWrapperCopyWithImpl<_ApiResponseWrapper>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ApiResponseWrapperToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ApiResponseWrapper&&const DeepCollectionEquality().equals(other._output, _output));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_output));

@override
String toString() {
  return 'ApiResponseWrapper(output: $output)';
}


}

/// @nodoc
abstract mixin class _$ApiResponseWrapperCopyWith<$Res> implements $ApiResponseWrapperCopyWith<$Res> {
  factory _$ApiResponseWrapperCopyWith(_ApiResponseWrapper value, $Res Function(_ApiResponseWrapper) _then) = __$ApiResponseWrapperCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'output') List<ApiMessageModel> output
});




}
/// @nodoc
class __$ApiResponseWrapperCopyWithImpl<$Res>
    implements _$ApiResponseWrapperCopyWith<$Res> {
  __$ApiResponseWrapperCopyWithImpl(this._self, this._then);

  final _ApiResponseWrapper _self;
  final $Res Function(_ApiResponseWrapper) _then;

/// Create a copy of ApiResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? output = null,}) {
  return _then(_ApiResponseWrapper(
output: null == output ? _self._output : output // ignore: cast_nullable_to_non_nullable
as List<ApiMessageModel>,
  ));
}


}

// dart format on
