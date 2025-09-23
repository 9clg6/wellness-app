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

 bool get showSecondField; bool get showValidationButton; String get topMotivationText; int get step; bool get showOverlay; int get messageStep;
/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeStateCopyWith<HomeState> get copyWith => _$HomeStateCopyWithImpl<HomeState>(this as HomeState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeState&&(identical(other.showSecondField, showSecondField) || other.showSecondField == showSecondField)&&(identical(other.showValidationButton, showValidationButton) || other.showValidationButton == showValidationButton)&&(identical(other.topMotivationText, topMotivationText) || other.topMotivationText == topMotivationText)&&(identical(other.step, step) || other.step == step)&&(identical(other.showOverlay, showOverlay) || other.showOverlay == showOverlay)&&(identical(other.messageStep, messageStep) || other.messageStep == messageStep));
}


@override
int get hashCode => Object.hash(runtimeType,showSecondField,showValidationButton,topMotivationText,step,showOverlay,messageStep);

@override
String toString() {
  return 'HomeState(showSecondField: $showSecondField, showValidationButton: $showValidationButton, topMotivationText: $topMotivationText, step: $step, showOverlay: $showOverlay, messageStep: $messageStep)';
}


}

/// @nodoc
abstract mixin class $HomeStateCopyWith<$Res>  {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) _then) = _$HomeStateCopyWithImpl;
@useResult
$Res call({
 bool showSecondField, bool showValidationButton, String topMotivationText, int step, bool showOverlay, int messageStep
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
@pragma('vm:prefer-inline') @override $Res call({Object? showSecondField = null,Object? showValidationButton = null,Object? topMotivationText = null,Object? step = null,Object? showOverlay = null,Object? messageStep = null,}) {
  return _then(_self.copyWith(
showSecondField: null == showSecondField ? _self.showSecondField : showSecondField // ignore: cast_nullable_to_non_nullable
as bool,showValidationButton: null == showValidationButton ? _self.showValidationButton : showValidationButton // ignore: cast_nullable_to_non_nullable
as bool,topMotivationText: null == topMotivationText ? _self.topMotivationText : topMotivationText // ignore: cast_nullable_to_non_nullable
as String,step: null == step ? _self.step : step // ignore: cast_nullable_to_non_nullable
as int,showOverlay: null == showOverlay ? _self.showOverlay : showOverlay // ignore: cast_nullable_to_non_nullable
as bool,messageStep: null == messageStep ? _self.messageStep : messageStep // ignore: cast_nullable_to_non_nullable
as int,
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HomeState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomeState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HomeState value)  $default,){
final _that = this;
switch (_that) {
case _HomeState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HomeState value)?  $default,){
final _that = this;
switch (_that) {
case _HomeState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool showSecondField,  bool showValidationButton,  String topMotivationText,  int step,  bool showOverlay,  int messageStep)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomeState() when $default != null:
return $default(_that.showSecondField,_that.showValidationButton,_that.topMotivationText,_that.step,_that.showOverlay,_that.messageStep);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool showSecondField,  bool showValidationButton,  String topMotivationText,  int step,  bool showOverlay,  int messageStep)  $default,) {final _that = this;
switch (_that) {
case _HomeState():
return $default(_that.showSecondField,_that.showValidationButton,_that.topMotivationText,_that.step,_that.showOverlay,_that.messageStep);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool showSecondField,  bool showValidationButton,  String topMotivationText,  int step,  bool showOverlay,  int messageStep)?  $default,) {final _that = this;
switch (_that) {
case _HomeState() when $default != null:
return $default(_that.showSecondField,_that.showValidationButton,_that.topMotivationText,_that.step,_that.showOverlay,_that.messageStep);case _:
  return null;

}
}

}

/// @nodoc


class _HomeState implements HomeState {
  const _HomeState({required this.showSecondField, required this.showValidationButton, required this.topMotivationText, required this.step, required this.showOverlay, required this.messageStep});
  

@override final  bool showSecondField;
@override final  bool showValidationButton;
@override final  String topMotivationText;
@override final  int step;
@override final  bool showOverlay;
@override final  int messageStep;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeStateCopyWith<_HomeState> get copyWith => __$HomeStateCopyWithImpl<_HomeState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeState&&(identical(other.showSecondField, showSecondField) || other.showSecondField == showSecondField)&&(identical(other.showValidationButton, showValidationButton) || other.showValidationButton == showValidationButton)&&(identical(other.topMotivationText, topMotivationText) || other.topMotivationText == topMotivationText)&&(identical(other.step, step) || other.step == step)&&(identical(other.showOverlay, showOverlay) || other.showOverlay == showOverlay)&&(identical(other.messageStep, messageStep) || other.messageStep == messageStep));
}


@override
int get hashCode => Object.hash(runtimeType,showSecondField,showValidationButton,topMotivationText,step,showOverlay,messageStep);

@override
String toString() {
  return 'HomeState(showSecondField: $showSecondField, showValidationButton: $showValidationButton, topMotivationText: $topMotivationText, step: $step, showOverlay: $showOverlay, messageStep: $messageStep)';
}


}

/// @nodoc
abstract mixin class _$HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$HomeStateCopyWith(_HomeState value, $Res Function(_HomeState) _then) = __$HomeStateCopyWithImpl;
@override @useResult
$Res call({
 bool showSecondField, bool showValidationButton, String topMotivationText, int step, bool showOverlay, int messageStep
});




}
/// @nodoc
class __$HomeStateCopyWithImpl<$Res>
    implements _$HomeStateCopyWith<$Res> {
  __$HomeStateCopyWithImpl(this._self, this._then);

  final _HomeState _self;
  final $Res Function(_HomeState) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? showSecondField = null,Object? showValidationButton = null,Object? topMotivationText = null,Object? step = null,Object? showOverlay = null,Object? messageStep = null,}) {
  return _then(_HomeState(
showSecondField: null == showSecondField ? _self.showSecondField : showSecondField // ignore: cast_nullable_to_non_nullable
as bool,showValidationButton: null == showValidationButton ? _self.showValidationButton : showValidationButton // ignore: cast_nullable_to_non_nullable
as bool,topMotivationText: null == topMotivationText ? _self.topMotivationText : topMotivationText // ignore: cast_nullable_to_non_nullable
as String,step: null == step ? _self.step : step // ignore: cast_nullable_to_non_nullable
as int,showOverlay: null == showOverlay ? _self.showOverlay : showOverlay // ignore: cast_nullable_to_non_nullable
as bool,messageStep: null == messageStep ? _self.messageStep : messageStep // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
