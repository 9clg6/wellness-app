// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'onboarding_answers.local.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OnboardingAnswersLocalModel {

@JsonKey(name: 'frequencyIndex') int? get frequencyIndex;@JsonKey(name: 'discoverySourceIndex') int? get discoverySourceIndex;@JsonKey(name: 'favoriteThemeIndex') int? get favoriteThemeIndex;@JsonKey(name: 'practiceDurationIndex') int? get practiceDurationIndex;@JsonKey(name: 'serenityScore') int? get serenityScore;@JsonKey(name: 'firstName') String? get firstName;@JsonKey(name: 'age') int? get age;@JsonKey(name: 'goalIndex') int? get goalIndex;
/// Create a copy of OnboardingAnswersLocalModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OnboardingAnswersLocalModelCopyWith<OnboardingAnswersLocalModel> get copyWith => _$OnboardingAnswersLocalModelCopyWithImpl<OnboardingAnswersLocalModel>(this as OnboardingAnswersLocalModel, _$identity);

  /// Serializes this OnboardingAnswersLocalModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnboardingAnswersLocalModel&&(identical(other.frequencyIndex, frequencyIndex) || other.frequencyIndex == frequencyIndex)&&(identical(other.discoverySourceIndex, discoverySourceIndex) || other.discoverySourceIndex == discoverySourceIndex)&&(identical(other.favoriteThemeIndex, favoriteThemeIndex) || other.favoriteThemeIndex == favoriteThemeIndex)&&(identical(other.practiceDurationIndex, practiceDurationIndex) || other.practiceDurationIndex == practiceDurationIndex)&&(identical(other.serenityScore, serenityScore) || other.serenityScore == serenityScore)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.age, age) || other.age == age)&&(identical(other.goalIndex, goalIndex) || other.goalIndex == goalIndex));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,frequencyIndex,discoverySourceIndex,favoriteThemeIndex,practiceDurationIndex,serenityScore,firstName,age,goalIndex);

@override
String toString() {
  return 'OnboardingAnswersLocalModel(frequencyIndex: $frequencyIndex, discoverySourceIndex: $discoverySourceIndex, favoriteThemeIndex: $favoriteThemeIndex, practiceDurationIndex: $practiceDurationIndex, serenityScore: $serenityScore, firstName: $firstName, age: $age, goalIndex: $goalIndex)';
}


}

/// @nodoc
abstract mixin class $OnboardingAnswersLocalModelCopyWith<$Res>  {
  factory $OnboardingAnswersLocalModelCopyWith(OnboardingAnswersLocalModel value, $Res Function(OnboardingAnswersLocalModel) _then) = _$OnboardingAnswersLocalModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'frequencyIndex') int? frequencyIndex,@JsonKey(name: 'discoverySourceIndex') int? discoverySourceIndex,@JsonKey(name: 'favoriteThemeIndex') int? favoriteThemeIndex,@JsonKey(name: 'practiceDurationIndex') int? practiceDurationIndex,@JsonKey(name: 'serenityScore') int? serenityScore,@JsonKey(name: 'firstName') String? firstName,@JsonKey(name: 'age') int? age,@JsonKey(name: 'goalIndex') int? goalIndex
});




}
/// @nodoc
class _$OnboardingAnswersLocalModelCopyWithImpl<$Res>
    implements $OnboardingAnswersLocalModelCopyWith<$Res> {
  _$OnboardingAnswersLocalModelCopyWithImpl(this._self, this._then);

  final OnboardingAnswersLocalModel _self;
  final $Res Function(OnboardingAnswersLocalModel) _then;

/// Create a copy of OnboardingAnswersLocalModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? frequencyIndex = freezed,Object? discoverySourceIndex = freezed,Object? favoriteThemeIndex = freezed,Object? practiceDurationIndex = freezed,Object? serenityScore = freezed,Object? firstName = freezed,Object? age = freezed,Object? goalIndex = freezed,}) {
  return _then(_self.copyWith(
frequencyIndex: freezed == frequencyIndex ? _self.frequencyIndex : frequencyIndex // ignore: cast_nullable_to_non_nullable
as int?,discoverySourceIndex: freezed == discoverySourceIndex ? _self.discoverySourceIndex : discoverySourceIndex // ignore: cast_nullable_to_non_nullable
as int?,favoriteThemeIndex: freezed == favoriteThemeIndex ? _self.favoriteThemeIndex : favoriteThemeIndex // ignore: cast_nullable_to_non_nullable
as int?,practiceDurationIndex: freezed == practiceDurationIndex ? _self.practiceDurationIndex : practiceDurationIndex // ignore: cast_nullable_to_non_nullable
as int?,serenityScore: freezed == serenityScore ? _self.serenityScore : serenityScore // ignore: cast_nullable_to_non_nullable
as int?,firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,age: freezed == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int?,goalIndex: freezed == goalIndex ? _self.goalIndex : goalIndex // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [OnboardingAnswersLocalModel].
extension OnboardingAnswersLocalModelPatterns on OnboardingAnswersLocalModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OnboardingAnswersLocalModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OnboardingAnswersLocalModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OnboardingAnswersLocalModel value)  $default,){
final _that = this;
switch (_that) {
case _OnboardingAnswersLocalModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OnboardingAnswersLocalModel value)?  $default,){
final _that = this;
switch (_that) {
case _OnboardingAnswersLocalModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'frequencyIndex')  int? frequencyIndex, @JsonKey(name: 'discoverySourceIndex')  int? discoverySourceIndex, @JsonKey(name: 'favoriteThemeIndex')  int? favoriteThemeIndex, @JsonKey(name: 'practiceDurationIndex')  int? practiceDurationIndex, @JsonKey(name: 'serenityScore')  int? serenityScore, @JsonKey(name: 'firstName')  String? firstName, @JsonKey(name: 'age')  int? age, @JsonKey(name: 'goalIndex')  int? goalIndex)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OnboardingAnswersLocalModel() when $default != null:
return $default(_that.frequencyIndex,_that.discoverySourceIndex,_that.favoriteThemeIndex,_that.practiceDurationIndex,_that.serenityScore,_that.firstName,_that.age,_that.goalIndex);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'frequencyIndex')  int? frequencyIndex, @JsonKey(name: 'discoverySourceIndex')  int? discoverySourceIndex, @JsonKey(name: 'favoriteThemeIndex')  int? favoriteThemeIndex, @JsonKey(name: 'practiceDurationIndex')  int? practiceDurationIndex, @JsonKey(name: 'serenityScore')  int? serenityScore, @JsonKey(name: 'firstName')  String? firstName, @JsonKey(name: 'age')  int? age, @JsonKey(name: 'goalIndex')  int? goalIndex)  $default,) {final _that = this;
switch (_that) {
case _OnboardingAnswersLocalModel():
return $default(_that.frequencyIndex,_that.discoverySourceIndex,_that.favoriteThemeIndex,_that.practiceDurationIndex,_that.serenityScore,_that.firstName,_that.age,_that.goalIndex);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'frequencyIndex')  int? frequencyIndex, @JsonKey(name: 'discoverySourceIndex')  int? discoverySourceIndex, @JsonKey(name: 'favoriteThemeIndex')  int? favoriteThemeIndex, @JsonKey(name: 'practiceDurationIndex')  int? practiceDurationIndex, @JsonKey(name: 'serenityScore')  int? serenityScore, @JsonKey(name: 'firstName')  String? firstName, @JsonKey(name: 'age')  int? age, @JsonKey(name: 'goalIndex')  int? goalIndex)?  $default,) {final _that = this;
switch (_that) {
case _OnboardingAnswersLocalModel() when $default != null:
return $default(_that.frequencyIndex,_that.discoverySourceIndex,_that.favoriteThemeIndex,_that.practiceDurationIndex,_that.serenityScore,_that.firstName,_that.age,_that.goalIndex);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OnboardingAnswersLocalModel implements OnboardingAnswersLocalModel {
   _OnboardingAnswersLocalModel({@JsonKey(name: 'frequencyIndex') required this.frequencyIndex, @JsonKey(name: 'discoverySourceIndex') required this.discoverySourceIndex, @JsonKey(name: 'favoriteThemeIndex') required this.favoriteThemeIndex, @JsonKey(name: 'practiceDurationIndex') required this.practiceDurationIndex, @JsonKey(name: 'serenityScore') required this.serenityScore, @JsonKey(name: 'firstName') required this.firstName, @JsonKey(name: 'age') required this.age, @JsonKey(name: 'goalIndex') required this.goalIndex});
  factory _OnboardingAnswersLocalModel.fromJson(Map<String, dynamic> json) => _$OnboardingAnswersLocalModelFromJson(json);

@override@JsonKey(name: 'frequencyIndex') final  int? frequencyIndex;
@override@JsonKey(name: 'discoverySourceIndex') final  int? discoverySourceIndex;
@override@JsonKey(name: 'favoriteThemeIndex') final  int? favoriteThemeIndex;
@override@JsonKey(name: 'practiceDurationIndex') final  int? practiceDurationIndex;
@override@JsonKey(name: 'serenityScore') final  int? serenityScore;
@override@JsonKey(name: 'firstName') final  String? firstName;
@override@JsonKey(name: 'age') final  int? age;
@override@JsonKey(name: 'goalIndex') final  int? goalIndex;

/// Create a copy of OnboardingAnswersLocalModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OnboardingAnswersLocalModelCopyWith<_OnboardingAnswersLocalModel> get copyWith => __$OnboardingAnswersLocalModelCopyWithImpl<_OnboardingAnswersLocalModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OnboardingAnswersLocalModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OnboardingAnswersLocalModel&&(identical(other.frequencyIndex, frequencyIndex) || other.frequencyIndex == frequencyIndex)&&(identical(other.discoverySourceIndex, discoverySourceIndex) || other.discoverySourceIndex == discoverySourceIndex)&&(identical(other.favoriteThemeIndex, favoriteThemeIndex) || other.favoriteThemeIndex == favoriteThemeIndex)&&(identical(other.practiceDurationIndex, practiceDurationIndex) || other.practiceDurationIndex == practiceDurationIndex)&&(identical(other.serenityScore, serenityScore) || other.serenityScore == serenityScore)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.age, age) || other.age == age)&&(identical(other.goalIndex, goalIndex) || other.goalIndex == goalIndex));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,frequencyIndex,discoverySourceIndex,favoriteThemeIndex,practiceDurationIndex,serenityScore,firstName,age,goalIndex);

@override
String toString() {
  return 'OnboardingAnswersLocalModel(frequencyIndex: $frequencyIndex, discoverySourceIndex: $discoverySourceIndex, favoriteThemeIndex: $favoriteThemeIndex, practiceDurationIndex: $practiceDurationIndex, serenityScore: $serenityScore, firstName: $firstName, age: $age, goalIndex: $goalIndex)';
}


}

/// @nodoc
abstract mixin class _$OnboardingAnswersLocalModelCopyWith<$Res> implements $OnboardingAnswersLocalModelCopyWith<$Res> {
  factory _$OnboardingAnswersLocalModelCopyWith(_OnboardingAnswersLocalModel value, $Res Function(_OnboardingAnswersLocalModel) _then) = __$OnboardingAnswersLocalModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'frequencyIndex') int? frequencyIndex,@JsonKey(name: 'discoverySourceIndex') int? discoverySourceIndex,@JsonKey(name: 'favoriteThemeIndex') int? favoriteThemeIndex,@JsonKey(name: 'practiceDurationIndex') int? practiceDurationIndex,@JsonKey(name: 'serenityScore') int? serenityScore,@JsonKey(name: 'firstName') String? firstName,@JsonKey(name: 'age') int? age,@JsonKey(name: 'goalIndex') int? goalIndex
});




}
/// @nodoc
class __$OnboardingAnswersLocalModelCopyWithImpl<$Res>
    implements _$OnboardingAnswersLocalModelCopyWith<$Res> {
  __$OnboardingAnswersLocalModelCopyWithImpl(this._self, this._then);

  final _OnboardingAnswersLocalModel _self;
  final $Res Function(_OnboardingAnswersLocalModel) _then;

/// Create a copy of OnboardingAnswersLocalModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? frequencyIndex = freezed,Object? discoverySourceIndex = freezed,Object? favoriteThemeIndex = freezed,Object? practiceDurationIndex = freezed,Object? serenityScore = freezed,Object? firstName = freezed,Object? age = freezed,Object? goalIndex = freezed,}) {
  return _then(_OnboardingAnswersLocalModel(
frequencyIndex: freezed == frequencyIndex ? _self.frequencyIndex : frequencyIndex // ignore: cast_nullable_to_non_nullable
as int?,discoverySourceIndex: freezed == discoverySourceIndex ? _self.discoverySourceIndex : discoverySourceIndex // ignore: cast_nullable_to_non_nullable
as int?,favoriteThemeIndex: freezed == favoriteThemeIndex ? _self.favoriteThemeIndex : favoriteThemeIndex // ignore: cast_nullable_to_non_nullable
as int?,practiceDurationIndex: freezed == practiceDurationIndex ? _self.practiceDurationIndex : practiceDurationIndex // ignore: cast_nullable_to_non_nullable
as int?,serenityScore: freezed == serenityScore ? _self.serenityScore : serenityScore // ignore: cast_nullable_to_non_nullable
as int?,firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,age: freezed == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int?,goalIndex: freezed == goalIndex ? _self.goalIndex : goalIndex // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
