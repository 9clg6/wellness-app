// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ai_analysis.remote.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AIAnalysisModel {

 List<String> get positiveElements; String get tendance; List<String> get improvementAxes; String get progressAnalysis; String get conclusion;
/// Create a copy of AIAnalysisModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AIAnalysisModelCopyWith<AIAnalysisModel> get copyWith => _$AIAnalysisModelCopyWithImpl<AIAnalysisModel>(this as AIAnalysisModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AIAnalysisModel&&const DeepCollectionEquality().equals(other.positiveElements, positiveElements)&&(identical(other.tendance, tendance) || other.tendance == tendance)&&const DeepCollectionEquality().equals(other.improvementAxes, improvementAxes)&&(identical(other.progressAnalysis, progressAnalysis) || other.progressAnalysis == progressAnalysis)&&(identical(other.conclusion, conclusion) || other.conclusion == conclusion));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(positiveElements),tendance,const DeepCollectionEquality().hash(improvementAxes),progressAnalysis,conclusion);

@override
String toString() {
  return 'AIAnalysisModel(positiveElements: $positiveElements, tendance: $tendance, improvementAxes: $improvementAxes, progressAnalysis: $progressAnalysis, conclusion: $conclusion)';
}


}

/// @nodoc
abstract mixin class $AIAnalysisModelCopyWith<$Res>  {
  factory $AIAnalysisModelCopyWith(AIAnalysisModel value, $Res Function(AIAnalysisModel) _then) = _$AIAnalysisModelCopyWithImpl;
@useResult
$Res call({
 List<String> positiveElements, String tendance, List<String> improvementAxes, String progressAnalysis, String conclusion
});




}
/// @nodoc
class _$AIAnalysisModelCopyWithImpl<$Res>
    implements $AIAnalysisModelCopyWith<$Res> {
  _$AIAnalysisModelCopyWithImpl(this._self, this._then);

  final AIAnalysisModel _self;
  final $Res Function(AIAnalysisModel) _then;

/// Create a copy of AIAnalysisModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? positiveElements = null,Object? tendance = null,Object? improvementAxes = null,Object? progressAnalysis = null,Object? conclusion = null,}) {
  return _then(AIAnalysisModel(
positiveElements: null == positiveElements ? _self.positiveElements : positiveElements // ignore: cast_nullable_to_non_nullable
as List<String>,tendance: null == tendance ? _self.tendance : tendance // ignore: cast_nullable_to_non_nullable
as String,improvementAxes: null == improvementAxes ? _self.improvementAxes : improvementAxes // ignore: cast_nullable_to_non_nullable
as List<String>,progressAnalysis: null == progressAnalysis ? _self.progressAnalysis : progressAnalysis // ignore: cast_nullable_to_non_nullable
as String,conclusion: null == conclusion ? _self.conclusion : conclusion // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AIAnalysisModel].
extension AIAnalysisModelPatterns on AIAnalysisModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({required TResult orElse(),}){
final _that = this;
switch (_that) {
case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(){
final _that = this;
switch (_that) {
case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(){
final _that = this;
switch (_that) {
case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({required TResult orElse(),}) {final _that = this;
switch (_that) {
case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>() {final _that = this;
switch (_that) {
case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>() {final _that = this;
switch (_that) {
case _:
  return null;

}
}

}

// dart format on
