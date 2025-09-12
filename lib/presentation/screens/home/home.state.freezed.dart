// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home.state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeState {

 int get totalSteps; bool get isLoading; bool get showSecondField; bool get showValidationButton; String get topMotivationText; int get step; bool get showOverlay; int get messageStep; Animation<RelativeRect>? get rectAnimation; Animation<double>? get radiusAnimation;
/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeStateCopyWith<HomeState> get copyWith => _$HomeStateCopyWithImpl<HomeState>(this as HomeState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeState&&(identical(other.totalSteps, totalSteps) || other.totalSteps == totalSteps)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.showSecondField, showSecondField) || other.showSecondField == showSecondField)&&(identical(other.showValidationButton, showValidationButton) || other.showValidationButton == showValidationButton)&&(identical(other.topMotivationText, topMotivationText) || other.topMotivationText == topMotivationText)&&(identical(other.step, step) || other.step == step)&&(identical(other.showOverlay, showOverlay) || other.showOverlay == showOverlay)&&(identical(other.messageStep, messageStep) || other.messageStep == messageStep)&&(identical(other.rectAnimation, rectAnimation) || other.rectAnimation == rectAnimation)&&(identical(other.radiusAnimation, radiusAnimation) || other.radiusAnimation == radiusAnimation));
}


@override
int get hashCode => Object.hash(runtimeType,totalSteps,isLoading,showSecondField,showValidationButton,topMotivationText,step,showOverlay,messageStep,rectAnimation,radiusAnimation);

@override
String toString() {
  return 'HomeState(totalSteps: $totalSteps, isLoading: $isLoading, showSecondField: $showSecondField, showValidationButton: $showValidationButton, topMotivationText: $topMotivationText, step: $step, showOverlay: $showOverlay, messageStep: $messageStep, rectAnimation: $rectAnimation, radiusAnimation: $radiusAnimation)';
}


}

/// @nodoc
abstract mixin class $HomeStateCopyWith<$Res>  {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) _then) = _$HomeStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, bool showSecondField, bool showValidationButton, String topMotivationText, int step, bool showOverlay, int messageStep, Animation<RelativeRect>? rectAnimation, Animation<double>? radiusAnimation
});




}
/// @nodoc
class _$HomeStateCopyWithImpl<$Res>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._self, this._then);

  final HomeState _self;
  final $Res Function(HomeState) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? showSecondField = null,Object? showValidationButton = null,Object? topMotivationText = null,Object? step = null,Object? showOverlay = null,Object? messageStep = null,Object? rectAnimation = freezed,Object? radiusAnimation = freezed,}) {
  return _then(HomeState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,showSecondField: null == showSecondField ? _self.showSecondField : showSecondField // ignore: cast_nullable_to_non_nullable
as bool,showValidationButton: null == showValidationButton ? _self.showValidationButton : showValidationButton // ignore: cast_nullable_to_non_nullable
as bool,topMotivationText: null == topMotivationText ? _self.topMotivationText : topMotivationText // ignore: cast_nullable_to_non_nullable
as String,step: null == step ? _self.step : step // ignore: cast_nullable_to_non_nullable
as int,showOverlay: null == showOverlay ? _self.showOverlay : showOverlay // ignore: cast_nullable_to_non_nullable
as bool,messageStep: null == messageStep ? _self.messageStep : messageStep // ignore: cast_nullable_to_non_nullable
as int,rectAnimation: freezed == rectAnimation ? _self.rectAnimation : rectAnimation // ignore: cast_nullable_to_non_nullable
as Animation<RelativeRect>?,radiusAnimation: freezed == radiusAnimation ? _self.radiusAnimation : radiusAnimation // ignore: cast_nullable_to_non_nullable
as Animation<double>?,
  ));
}

}


/// Adds pattern-matching-related methods to [HomeState].
extension HomeStatePatterns on HomeState {
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
