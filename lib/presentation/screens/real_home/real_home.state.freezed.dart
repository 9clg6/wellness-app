// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'real_home.state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RealHomeState {

 bool get isLoading; String get surname; bool get isTodayEventsFilled;
/// Create a copy of RealHomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RealHomeStateCopyWith<RealHomeState> get copyWith => _$RealHomeStateCopyWithImpl<RealHomeState>(this as RealHomeState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RealHomeState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.surname, surname) || other.surname == surname)&&(identical(other.isTodayEventsFilled, isTodayEventsFilled) || other.isTodayEventsFilled == isTodayEventsFilled));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,surname,isTodayEventsFilled);

@override
String toString() {
  return 'RealHomeState(isLoading: $isLoading, surname: $surname, isTodayEventsFilled: $isTodayEventsFilled)';
}


}

/// @nodoc
abstract mixin class $RealHomeStateCopyWith<$Res>  {
  factory $RealHomeStateCopyWith(RealHomeState value, $Res Function(RealHomeState) _then) = _$RealHomeStateCopyWithImpl;
@useResult
$Res call({
 String surname, bool isLoading, bool isTodayEventsFilled
});




}
/// @nodoc
class _$RealHomeStateCopyWithImpl<$Res>
    implements $RealHomeStateCopyWith<$Res> {
  _$RealHomeStateCopyWithImpl(this._self, this._then);

  final RealHomeState _self;
  final $Res Function(RealHomeState) _then;

/// Create a copy of RealHomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? surname = null,Object? isLoading = null,Object? isTodayEventsFilled = null,}) {
  return _then(RealHomeState(
surname: null == surname ? _self.surname : surname // ignore: cast_nullable_to_non_nullable
as String,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isTodayEventsFilled: null == isTodayEventsFilled ? _self.isTodayEventsFilled : isTodayEventsFilled // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


// dart format on
