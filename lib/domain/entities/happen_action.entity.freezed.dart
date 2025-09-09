// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'happen_action.entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HappenActionEntity {

 String get happen; String get action; DateTime get date;
/// Create a copy of HappenActionEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HappenActionEntityCopyWith<HappenActionEntity> get copyWith => _$HappenActionEntityCopyWithImpl<HappenActionEntity>(this as HappenActionEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HappenActionEntity&&(identical(other.happen, happen) || other.happen == happen)&&(identical(other.action, action) || other.action == action)&&(identical(other.date, date) || other.date == date));
}


@override
int get hashCode => Object.hash(runtimeType,happen,action,date);

@override
String toString() {
  return 'HappenActionEntity(happen: $happen, action: $action, date: $date)';
}


}

/// @nodoc
abstract mixin class $HappenActionEntityCopyWith<$Res>  {
  factory $HappenActionEntityCopyWith(HappenActionEntity value, $Res Function(HappenActionEntity) _then) = _$HappenActionEntityCopyWithImpl;
@useResult
$Res call({
 String happen, String action, DateTime date
});




}
/// @nodoc
class _$HappenActionEntityCopyWithImpl<$Res>
    implements $HappenActionEntityCopyWith<$Res> {
  _$HappenActionEntityCopyWithImpl(this._self, this._then);

  final HappenActionEntity _self;
  final $Res Function(HappenActionEntity) _then;

/// Create a copy of HappenActionEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? happen = null,Object? action = null,Object? date = null,}) {
  return _then(HappenActionEntity(
happen: null == happen ? _self.happen : happen // ignore: cast_nullable_to_non_nullable
as String,action: null == action ? _self.action : action // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


// dart format on
