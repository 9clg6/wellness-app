// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'first_quizz.state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FirstQuizzState {

 int get currentIndex; OnboardingAnswers get answers; String? get tempName; String? get tempAge; bool get isCompleted; int? get selectedResponseIndex; bool get showBtn;
/// Create a copy of FirstQuizzState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FirstQuizzStateCopyWith<FirstQuizzState> get copyWith => _$FirstQuizzStateCopyWithImpl<FirstQuizzState>(this as FirstQuizzState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FirstQuizzState&&(identical(other.currentIndex, currentIndex) || other.currentIndex == currentIndex)&&(identical(other.answers, answers) || other.answers == answers)&&(identical(other.tempName, tempName) || other.tempName == tempName)&&(identical(other.tempAge, tempAge) || other.tempAge == tempAge)&&(identical(other.isCompleted, isCompleted) || other.isCompleted == isCompleted)&&(identical(other.selectedResponseIndex, selectedResponseIndex) || other.selectedResponseIndex == selectedResponseIndex)&&(identical(other.showBtn, showBtn) || other.showBtn == showBtn));
}


@override
int get hashCode => Object.hash(runtimeType,currentIndex,answers,tempName,tempAge,isCompleted,selectedResponseIndex,showBtn);

@override
String toString() {
  return 'FirstQuizzState(currentIndex: $currentIndex, answers: $answers, tempName: $tempName, tempAge: $tempAge, isCompleted: $isCompleted, selectedResponseIndex: $selectedResponseIndex, showBtn: $showBtn)';
}


}

/// @nodoc
abstract mixin class $FirstQuizzStateCopyWith<$Res>  {
  factory $FirstQuizzStateCopyWith(FirstQuizzState value, $Res Function(FirstQuizzState) _then) = _$FirstQuizzStateCopyWithImpl;
@useResult
$Res call({
 int currentIndex, OnboardingAnswers answers, String? tempName, String? tempAge, bool isCompleted, int? selectedResponseIndex, bool showBtn
});




}
/// @nodoc
class _$FirstQuizzStateCopyWithImpl<$Res>
    implements $FirstQuizzStateCopyWith<$Res> {
  _$FirstQuizzStateCopyWithImpl(this._self, this._then);

  final FirstQuizzState _self;
  final $Res Function(FirstQuizzState) _then;

/// Create a copy of FirstQuizzState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? currentIndex = null,Object? answers = null,Object? tempName = freezed,Object? tempAge = freezed,Object? isCompleted = null,Object? selectedResponseIndex = freezed,Object? showBtn = null,}) {
  return _then(FirstQuizzState(
currentIndex: null == currentIndex ? _self.currentIndex : currentIndex // ignore: cast_nullable_to_non_nullable
as int,answers: null == answers ? _self.answers : answers // ignore: cast_nullable_to_non_nullable
as OnboardingAnswers,tempName: freezed == tempName ? _self.tempName : tempName // ignore: cast_nullable_to_non_nullable
as String?,tempAge: freezed == tempAge ? _self.tempAge : tempAge // ignore: cast_nullable_to_non_nullable
as String?,isCompleted: null == isCompleted ? _self.isCompleted : isCompleted // ignore: cast_nullable_to_non_nullable
as bool,selectedResponseIndex: freezed == selectedResponseIndex ? _self.selectedResponseIndex : selectedResponseIndex // ignore: cast_nullable_to_non_nullable
as int?,showBtn: null == showBtn ? _self.showBtn : showBtn // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [FirstQuizzState].
extension FirstQuizzStatePatterns on FirstQuizzState {
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
