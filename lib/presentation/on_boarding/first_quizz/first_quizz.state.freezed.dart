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

 OnboardingAnswers get answers; int get currentIndex; bool get isCompleted; bool get showBtn; String? get tempName; String? get tempAge; int? get selectedResponseIndex;
/// Create a copy of FirstQuizzState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FirstQuizzStateCopyWith<FirstQuizzState> get copyWith => _$FirstQuizzStateCopyWithImpl<FirstQuizzState>(this as FirstQuizzState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FirstQuizzState&&(identical(other.answers, answers) || other.answers == answers)&&(identical(other.currentIndex, currentIndex) || other.currentIndex == currentIndex)&&(identical(other.isCompleted, isCompleted) || other.isCompleted == isCompleted)&&(identical(other.showBtn, showBtn) || other.showBtn == showBtn)&&(identical(other.tempName, tempName) || other.tempName == tempName)&&(identical(other.tempAge, tempAge) || other.tempAge == tempAge)&&(identical(other.selectedResponseIndex, selectedResponseIndex) || other.selectedResponseIndex == selectedResponseIndex));
}


@override
int get hashCode => Object.hash(runtimeType,answers,currentIndex,isCompleted,showBtn,tempName,tempAge,selectedResponseIndex);

@override
String toString() {
  return 'FirstQuizzState(answers: $answers, currentIndex: $currentIndex, isCompleted: $isCompleted, showBtn: $showBtn, tempName: $tempName, tempAge: $tempAge, selectedResponseIndex: $selectedResponseIndex)';
}


}

/// @nodoc
abstract mixin class $FirstQuizzStateCopyWith<$Res>  {
  factory $FirstQuizzStateCopyWith(FirstQuizzState value, $Res Function(FirstQuizzState) _then) = _$FirstQuizzStateCopyWithImpl;
@useResult
$Res call({
 OnboardingAnswers answers, int currentIndex, bool isCompleted, bool showBtn, String? tempName, String? tempAge, int? selectedResponseIndex
});


$OnboardingAnswersCopyWith<$Res> get answers;

}
/// @nodoc
class _$FirstQuizzStateCopyWithImpl<$Res>
    implements $FirstQuizzStateCopyWith<$Res> {
  _$FirstQuizzStateCopyWithImpl(this._self, this._then);

  final FirstQuizzState _self;
  final $Res Function(FirstQuizzState) _then;

/// Create a copy of FirstQuizzState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? answers = null,Object? currentIndex = null,Object? isCompleted = null,Object? showBtn = null,Object? tempName = freezed,Object? tempAge = freezed,Object? selectedResponseIndex = freezed,}) {
  return _then(_self.copyWith(
answers: null == answers ? _self.answers : answers // ignore: cast_nullable_to_non_nullable
as OnboardingAnswers,currentIndex: null == currentIndex ? _self.currentIndex : currentIndex // ignore: cast_nullable_to_non_nullable
as int,isCompleted: null == isCompleted ? _self.isCompleted : isCompleted // ignore: cast_nullable_to_non_nullable
as bool,showBtn: null == showBtn ? _self.showBtn : showBtn // ignore: cast_nullable_to_non_nullable
as bool,tempName: freezed == tempName ? _self.tempName : tempName // ignore: cast_nullable_to_non_nullable
as String?,tempAge: freezed == tempAge ? _self.tempAge : tempAge // ignore: cast_nullable_to_non_nullable
as String?,selectedResponseIndex: freezed == selectedResponseIndex ? _self.selectedResponseIndex : selectedResponseIndex // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}
/// Create a copy of FirstQuizzState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OnboardingAnswersCopyWith<$Res> get answers {
  
  return $OnboardingAnswersCopyWith<$Res>(_self.answers, (value) {
    return _then(_self.copyWith(answers: value));
  });
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FirstQuizzState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FirstQuizzState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FirstQuizzState value)  $default,){
final _that = this;
switch (_that) {
case _FirstQuizzState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FirstQuizzState value)?  $default,){
final _that = this;
switch (_that) {
case _FirstQuizzState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( OnboardingAnswers answers,  int currentIndex,  bool isCompleted,  bool showBtn,  String? tempName,  String? tempAge,  int? selectedResponseIndex)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FirstQuizzState() when $default != null:
return $default(_that.answers,_that.currentIndex,_that.isCompleted,_that.showBtn,_that.tempName,_that.tempAge,_that.selectedResponseIndex);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( OnboardingAnswers answers,  int currentIndex,  bool isCompleted,  bool showBtn,  String? tempName,  String? tempAge,  int? selectedResponseIndex)  $default,) {final _that = this;
switch (_that) {
case _FirstQuizzState():
return $default(_that.answers,_that.currentIndex,_that.isCompleted,_that.showBtn,_that.tempName,_that.tempAge,_that.selectedResponseIndex);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( OnboardingAnswers answers,  int currentIndex,  bool isCompleted,  bool showBtn,  String? tempName,  String? tempAge,  int? selectedResponseIndex)?  $default,) {final _that = this;
switch (_that) {
case _FirstQuizzState() when $default != null:
return $default(_that.answers,_that.currentIndex,_that.isCompleted,_that.showBtn,_that.tempName,_that.tempAge,_that.selectedResponseIndex);case _:
  return null;

}
}

}

/// @nodoc


class _FirstQuizzState implements FirstQuizzState {
  const _FirstQuizzState({required this.answers, required this.currentIndex, required this.isCompleted, required this.showBtn, this.tempName, this.tempAge, this.selectedResponseIndex});
  

@override final  OnboardingAnswers answers;
@override final  int currentIndex;
@override final  bool isCompleted;
@override final  bool showBtn;
@override final  String? tempName;
@override final  String? tempAge;
@override final  int? selectedResponseIndex;

/// Create a copy of FirstQuizzState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FirstQuizzStateCopyWith<_FirstQuizzState> get copyWith => __$FirstQuizzStateCopyWithImpl<_FirstQuizzState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FirstQuizzState&&(identical(other.answers, answers) || other.answers == answers)&&(identical(other.currentIndex, currentIndex) || other.currentIndex == currentIndex)&&(identical(other.isCompleted, isCompleted) || other.isCompleted == isCompleted)&&(identical(other.showBtn, showBtn) || other.showBtn == showBtn)&&(identical(other.tempName, tempName) || other.tempName == tempName)&&(identical(other.tempAge, tempAge) || other.tempAge == tempAge)&&(identical(other.selectedResponseIndex, selectedResponseIndex) || other.selectedResponseIndex == selectedResponseIndex));
}


@override
int get hashCode => Object.hash(runtimeType,answers,currentIndex,isCompleted,showBtn,tempName,tempAge,selectedResponseIndex);

@override
String toString() {
  return 'FirstQuizzState(answers: $answers, currentIndex: $currentIndex, isCompleted: $isCompleted, showBtn: $showBtn, tempName: $tempName, tempAge: $tempAge, selectedResponseIndex: $selectedResponseIndex)';
}


}

/// @nodoc
abstract mixin class _$FirstQuizzStateCopyWith<$Res> implements $FirstQuizzStateCopyWith<$Res> {
  factory _$FirstQuizzStateCopyWith(_FirstQuizzState value, $Res Function(_FirstQuizzState) _then) = __$FirstQuizzStateCopyWithImpl;
@override @useResult
$Res call({
 OnboardingAnswers answers, int currentIndex, bool isCompleted, bool showBtn, String? tempName, String? tempAge, int? selectedResponseIndex
});


@override $OnboardingAnswersCopyWith<$Res> get answers;

}
/// @nodoc
class __$FirstQuizzStateCopyWithImpl<$Res>
    implements _$FirstQuizzStateCopyWith<$Res> {
  __$FirstQuizzStateCopyWithImpl(this._self, this._then);

  final _FirstQuizzState _self;
  final $Res Function(_FirstQuizzState) _then;

/// Create a copy of FirstQuizzState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? answers = null,Object? currentIndex = null,Object? isCompleted = null,Object? showBtn = null,Object? tempName = freezed,Object? tempAge = freezed,Object? selectedResponseIndex = freezed,}) {
  return _then(_FirstQuizzState(
answers: null == answers ? _self.answers : answers // ignore: cast_nullable_to_non_nullable
as OnboardingAnswers,currentIndex: null == currentIndex ? _self.currentIndex : currentIndex // ignore: cast_nullable_to_non_nullable
as int,isCompleted: null == isCompleted ? _self.isCompleted : isCompleted // ignore: cast_nullable_to_non_nullable
as bool,showBtn: null == showBtn ? _self.showBtn : showBtn // ignore: cast_nullable_to_non_nullable
as bool,tempName: freezed == tempName ? _self.tempName : tempName // ignore: cast_nullable_to_non_nullable
as String?,tempAge: freezed == tempAge ? _self.tempAge : tempAge // ignore: cast_nullable_to_non_nullable
as String?,selectedResponseIndex: freezed == selectedResponseIndex ? _self.selectedResponseIndex : selectedResponseIndex // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

/// Create a copy of FirstQuizzState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OnboardingAnswersCopyWith<$Res> get answers {
  
  return $OnboardingAnswersCopyWith<$Res>(_self.answers, (value) {
    return _then(_self.copyWith(answers: value));
  });
}
}

// dart format on
