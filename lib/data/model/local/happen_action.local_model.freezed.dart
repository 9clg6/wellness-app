// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'happen_action.local_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HappenActionLocalModel {

@JsonKey(name: 'happen') String get happen;@JsonKey(name: 'action') String get action;@JsonKey(name: 'date') DateTime get date;
/// Create a copy of HappenActionLocalModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HappenActionLocalModelCopyWith<HappenActionLocalModel> get copyWith => _$HappenActionLocalModelCopyWithImpl<HappenActionLocalModel>(this as HappenActionLocalModel, _$identity);

  /// Serializes this HappenActionLocalModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HappenActionLocalModel&&(identical(other.happen, happen) || other.happen == happen)&&(identical(other.action, action) || other.action == action)&&(identical(other.date, date) || other.date == date));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,happen,action,date);

@override
String toString() {
  return 'HappenActionLocalModel(happen: $happen, action: $action, date: $date)';
}


}

/// @nodoc
abstract mixin class $HappenActionLocalModelCopyWith<$Res>  {
  factory $HappenActionLocalModelCopyWith(HappenActionLocalModel value, $Res Function(HappenActionLocalModel) _then) = _$HappenActionLocalModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'happen') String happen,@JsonKey(name: 'action') String action,@JsonKey(name: 'date') DateTime date
});




}
/// @nodoc
class _$HappenActionLocalModelCopyWithImpl<$Res>
    implements $HappenActionLocalModelCopyWith<$Res> {
  _$HappenActionLocalModelCopyWithImpl(this._self, this._then);

  final HappenActionLocalModel _self;
  final $Res Function(HappenActionLocalModel) _then;

/// Create a copy of HappenActionLocalModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? happen = null,Object? action = null,Object? date = null,}) {
  return _then(_self.copyWith(
happen: null == happen ? _self.happen : happen // ignore: cast_nullable_to_non_nullable
as String,action: null == action ? _self.action : action // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [HappenActionLocalModel].
extension HappenActionLocalModelPatterns on HappenActionLocalModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HappenActionLocalModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HappenActionLocalModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HappenActionLocalModel value)  $default,){
final _that = this;
switch (_that) {
case _HappenActionLocalModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HappenActionLocalModel value)?  $default,){
final _that = this;
switch (_that) {
case _HappenActionLocalModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'happen')  String happen, @JsonKey(name: 'action')  String action, @JsonKey(name: 'date')  DateTime date)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HappenActionLocalModel() when $default != null:
return $default(_that.happen,_that.action,_that.date);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'happen')  String happen, @JsonKey(name: 'action')  String action, @JsonKey(name: 'date')  DateTime date)  $default,) {final _that = this;
switch (_that) {
case _HappenActionLocalModel():
return $default(_that.happen,_that.action,_that.date);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'happen')  String happen, @JsonKey(name: 'action')  String action, @JsonKey(name: 'date')  DateTime date)?  $default,) {final _that = this;
switch (_that) {
case _HappenActionLocalModel() when $default != null:
return $default(_that.happen,_that.action,_that.date);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HappenActionLocalModel implements HappenActionLocalModel {
   _HappenActionLocalModel({@JsonKey(name: 'happen') required this.happen, @JsonKey(name: 'action') required this.action, @JsonKey(name: 'date') required this.date});
  factory _HappenActionLocalModel.fromJson(Map<String, dynamic> json) => _$HappenActionLocalModelFromJson(json);

@override@JsonKey(name: 'happen') final  String happen;
@override@JsonKey(name: 'action') final  String action;
@override@JsonKey(name: 'date') final  DateTime date;

/// Create a copy of HappenActionLocalModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HappenActionLocalModelCopyWith<_HappenActionLocalModel> get copyWith => __$HappenActionLocalModelCopyWithImpl<_HappenActionLocalModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HappenActionLocalModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HappenActionLocalModel&&(identical(other.happen, happen) || other.happen == happen)&&(identical(other.action, action) || other.action == action)&&(identical(other.date, date) || other.date == date));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,happen,action,date);

@override
String toString() {
  return 'HappenActionLocalModel(happen: $happen, action: $action, date: $date)';
}


}

/// @nodoc
abstract mixin class _$HappenActionLocalModelCopyWith<$Res> implements $HappenActionLocalModelCopyWith<$Res> {
  factory _$HappenActionLocalModelCopyWith(_HappenActionLocalModel value, $Res Function(_HappenActionLocalModel) _then) = __$HappenActionLocalModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'happen') String happen,@JsonKey(name: 'action') String action,@JsonKey(name: 'date') DateTime date
});




}
/// @nodoc
class __$HappenActionLocalModelCopyWithImpl<$Res>
    implements _$HappenActionLocalModelCopyWith<$Res> {
  __$HappenActionLocalModelCopyWithImpl(this._self, this._then);

  final _HappenActionLocalModel _self;
  final $Res Function(_HappenActionLocalModel) _then;

/// Create a copy of HappenActionLocalModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? happen = null,Object? action = null,Object? date = null,}) {
  return _then(_HappenActionLocalModel(
happen: null == happen ? _self.happen : happen // ignore: cast_nullable_to_non_nullable
as String,action: null == action ? _self.action : action // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
