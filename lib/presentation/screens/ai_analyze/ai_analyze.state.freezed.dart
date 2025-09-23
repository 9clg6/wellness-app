// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ai_analyze.state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AiAnalyzeState {

 AIAnalysisEntity get report;
/// Create a copy of AiAnalyzeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AiAnalyzeStateCopyWith<AiAnalyzeState> get copyWith => _$AiAnalyzeStateCopyWithImpl<AiAnalyzeState>(this as AiAnalyzeState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AiAnalyzeState&&(identical(other.report, report) || other.report == report));
}


@override
int get hashCode => Object.hash(runtimeType,report);

@override
String toString() {
  return 'AiAnalyzeState(report: $report)';
}


}

/// @nodoc
abstract mixin class $AiAnalyzeStateCopyWith<$Res>  {
  factory $AiAnalyzeStateCopyWith(AiAnalyzeState value, $Res Function(AiAnalyzeState) _then) = _$AiAnalyzeStateCopyWithImpl;
@useResult
$Res call({
 AIAnalysisEntity report
});


$AIAnalysisEntityCopyWith<$Res> get report;

}
/// @nodoc
class _$AiAnalyzeStateCopyWithImpl<$Res>
    implements $AiAnalyzeStateCopyWith<$Res> {
  _$AiAnalyzeStateCopyWithImpl(this._self, this._then);

  final AiAnalyzeState _self;
  final $Res Function(AiAnalyzeState) _then;

/// Create a copy of AiAnalyzeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? report = null,}) {
  return _then(_self.copyWith(
report: null == report ? _self.report : report // ignore: cast_nullable_to_non_nullable
as AIAnalysisEntity,
  ));
}
/// Create a copy of AiAnalyzeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AIAnalysisEntityCopyWith<$Res> get report {
  
  return $AIAnalysisEntityCopyWith<$Res>(_self.report, (value) {
    return _then(_self.copyWith(report: value));
  });
}
}


/// Adds pattern-matching-related methods to [AiAnalyzeState].
extension AiAnalyzeStatePatterns on AiAnalyzeState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AiAnalyzeState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AiAnalyzeState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AiAnalyzeState value)  $default,){
final _that = this;
switch (_that) {
case _AiAnalyzeState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AiAnalyzeState value)?  $default,){
final _that = this;
switch (_that) {
case _AiAnalyzeState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AIAnalysisEntity report)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AiAnalyzeState() when $default != null:
return $default(_that.report);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AIAnalysisEntity report)  $default,) {final _that = this;
switch (_that) {
case _AiAnalyzeState():
return $default(_that.report);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AIAnalysisEntity report)?  $default,) {final _that = this;
switch (_that) {
case _AiAnalyzeState() when $default != null:
return $default(_that.report);case _:
  return null;

}
}

}

/// @nodoc


class _AiAnalyzeState implements AiAnalyzeState {
  const _AiAnalyzeState({required this.report});
  

@override final  AIAnalysisEntity report;

/// Create a copy of AiAnalyzeState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AiAnalyzeStateCopyWith<_AiAnalyzeState> get copyWith => __$AiAnalyzeStateCopyWithImpl<_AiAnalyzeState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AiAnalyzeState&&(identical(other.report, report) || other.report == report));
}


@override
int get hashCode => Object.hash(runtimeType,report);

@override
String toString() {
  return 'AiAnalyzeState(report: $report)';
}


}

/// @nodoc
abstract mixin class _$AiAnalyzeStateCopyWith<$Res> implements $AiAnalyzeStateCopyWith<$Res> {
  factory _$AiAnalyzeStateCopyWith(_AiAnalyzeState value, $Res Function(_AiAnalyzeState) _then) = __$AiAnalyzeStateCopyWithImpl;
@override @useResult
$Res call({
 AIAnalysisEntity report
});


@override $AIAnalysisEntityCopyWith<$Res> get report;

}
/// @nodoc
class __$AiAnalyzeStateCopyWithImpl<$Res>
    implements _$AiAnalyzeStateCopyWith<$Res> {
  __$AiAnalyzeStateCopyWithImpl(this._self, this._then);

  final _AiAnalyzeState _self;
  final $Res Function(_AiAnalyzeState) _then;

/// Create a copy of AiAnalyzeState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? report = null,}) {
  return _then(_AiAnalyzeState(
report: null == report ? _self.report : report // ignore: cast_nullable_to_non_nullable
as AIAnalysisEntity,
  ));
}

/// Create a copy of AiAnalyzeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AIAnalysisEntityCopyWith<$Res> get report {
  
  return $AIAnalysisEntityCopyWith<$Res>(_self.report, (value) {
    return _then(_self.copyWith(report: value));
  });
}
}

// dart format on
