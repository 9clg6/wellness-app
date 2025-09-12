// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'onboarding_answers.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OnboardingAnswers {

 int? get frequencyIndex; int? get discoverySourceIndex; int? get favoriteThemeIndex; int? get practiceDurationIndex; int? get serenityScore; String? get firstName; int? get age; int? get goalIndex;
/// Create a copy of OnboardingAnswers
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OnboardingAnswersCopyWith<OnboardingAnswers> get copyWith => _$OnboardingAnswersCopyWithImpl<OnboardingAnswers>(this as OnboardingAnswers, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnboardingAnswers&&(identical(other.frequencyIndex, frequencyIndex) || other.frequencyIndex == frequencyIndex)&&(identical(other.discoverySourceIndex, discoverySourceIndex) || other.discoverySourceIndex == discoverySourceIndex)&&(identical(other.favoriteThemeIndex, favoriteThemeIndex) || other.favoriteThemeIndex == favoriteThemeIndex)&&(identical(other.practiceDurationIndex, practiceDurationIndex) || other.practiceDurationIndex == practiceDurationIndex)&&(identical(other.serenityScore, serenityScore) || other.serenityScore == serenityScore)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.age, age) || other.age == age)&&(identical(other.goalIndex, goalIndex) || other.goalIndex == goalIndex));
}


@override
int get hashCode => Object.hash(runtimeType,frequencyIndex,discoverySourceIndex,favoriteThemeIndex,practiceDurationIndex,serenityScore,firstName,age,goalIndex);

@override
String toString() {
  return 'OnboardingAnswers(frequencyIndex: $frequencyIndex, discoverySourceIndex: $discoverySourceIndex, favoriteThemeIndex: $favoriteThemeIndex, practiceDurationIndex: $practiceDurationIndex, serenityScore: $serenityScore, firstName: $firstName, age: $age, goalIndex: $goalIndex)';
}


}

/// @nodoc
abstract mixin class $OnboardingAnswersCopyWith<$Res>  {
  factory $OnboardingAnswersCopyWith(OnboardingAnswers value, $Res Function(OnboardingAnswers) _then) = _$OnboardingAnswersCopyWithImpl;
@useResult
$Res call({
 int? frequencyIndex, int? discoverySourceIndex, int? favoriteThemeIndex, int? practiceDurationIndex, int? serenityScore, String? firstName, int? age, int? goalIndex
});




}
/// @nodoc
class _$OnboardingAnswersCopyWithImpl<$Res>
    implements $OnboardingAnswersCopyWith<$Res> {
  _$OnboardingAnswersCopyWithImpl(this._self, this._then);

  final OnboardingAnswers _self;
  final $Res Function(OnboardingAnswers) _then;

/// Create a copy of OnboardingAnswers
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? frequencyIndex = freezed,Object? discoverySourceIndex = freezed,Object? favoriteThemeIndex = freezed,Object? practiceDurationIndex = freezed,Object? serenityScore = freezed,Object? firstName = freezed,Object? age = freezed,Object? goalIndex = freezed,}) {
  return _then(OnboardingAnswers(
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


/// Adds pattern-matching-related methods to [OnboardingAnswers].
extension OnboardingAnswersPatterns on OnboardingAnswers {
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
