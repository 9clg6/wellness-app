// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ai_analysis_report.local_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AIAnalysisReportLocalModel {

@StatsConfianceConverter() StatsConfiance get statsConfiance;@CategorieDominanteConverter() CategorieDominante get categorieDominante; String get humeurGenerale; String get momentMarquant; String get progressionSemaine; String get analyseGlobale; List<String> get suggestions; String get id; String get startDate; String get endDate; String get createdAt;
/// Create a copy of AIAnalysisReportLocalModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AIAnalysisReportLocalModelCopyWith<AIAnalysisReportLocalModel> get copyWith => _$AIAnalysisReportLocalModelCopyWithImpl<AIAnalysisReportLocalModel>(this as AIAnalysisReportLocalModel, _$identity);

  /// Serializes this AIAnalysisReportLocalModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AIAnalysisReportLocalModel&&(identical(other.statsConfiance, statsConfiance) || other.statsConfiance == statsConfiance)&&(identical(other.categorieDominante, categorieDominante) || other.categorieDominante == categorieDominante)&&(identical(other.humeurGenerale, humeurGenerale) || other.humeurGenerale == humeurGenerale)&&(identical(other.momentMarquant, momentMarquant) || other.momentMarquant == momentMarquant)&&(identical(other.progressionSemaine, progressionSemaine) || other.progressionSemaine == progressionSemaine)&&(identical(other.analyseGlobale, analyseGlobale) || other.analyseGlobale == analyseGlobale)&&const DeepCollectionEquality().equals(other.suggestions, suggestions)&&(identical(other.id, id) || other.id == id)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,statsConfiance,categorieDominante,humeurGenerale,momentMarquant,progressionSemaine,analyseGlobale,const DeepCollectionEquality().hash(suggestions),id,startDate,endDate,createdAt);

@override
String toString() {
  return 'AIAnalysisReportLocalModel(statsConfiance: $statsConfiance, categorieDominante: $categorieDominante, humeurGenerale: $humeurGenerale, momentMarquant: $momentMarquant, progressionSemaine: $progressionSemaine, analyseGlobale: $analyseGlobale, suggestions: $suggestions, id: $id, startDate: $startDate, endDate: $endDate, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $AIAnalysisReportLocalModelCopyWith<$Res>  {
  factory $AIAnalysisReportLocalModelCopyWith(AIAnalysisReportLocalModel value, $Res Function(AIAnalysisReportLocalModel) _then) = _$AIAnalysisReportLocalModelCopyWithImpl;
@useResult
$Res call({
@StatsConfianceConverter() StatsConfiance statsConfiance,@CategorieDominanteConverter() CategorieDominante categorieDominante, String humeurGenerale, String momentMarquant, String progressionSemaine, String analyseGlobale, List<String> suggestions, String id, String startDate, String endDate, String createdAt
});


$StatsConfianceCopyWith<$Res> get statsConfiance;$CategorieDominanteCopyWith<$Res> get categorieDominante;

}
/// @nodoc
class _$AIAnalysisReportLocalModelCopyWithImpl<$Res>
    implements $AIAnalysisReportLocalModelCopyWith<$Res> {
  _$AIAnalysisReportLocalModelCopyWithImpl(this._self, this._then);

  final AIAnalysisReportLocalModel _self;
  final $Res Function(AIAnalysisReportLocalModel) _then;

/// Create a copy of AIAnalysisReportLocalModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? statsConfiance = null,Object? categorieDominante = null,Object? humeurGenerale = null,Object? momentMarquant = null,Object? progressionSemaine = null,Object? analyseGlobale = null,Object? suggestions = null,Object? id = null,Object? startDate = null,Object? endDate = null,Object? createdAt = null,}) {
  return _then(_self.copyWith(
statsConfiance: null == statsConfiance ? _self.statsConfiance : statsConfiance // ignore: cast_nullable_to_non_nullable
as StatsConfiance,categorieDominante: null == categorieDominante ? _self.categorieDominante : categorieDominante // ignore: cast_nullable_to_non_nullable
as CategorieDominante,humeurGenerale: null == humeurGenerale ? _self.humeurGenerale : humeurGenerale // ignore: cast_nullable_to_non_nullable
as String,momentMarquant: null == momentMarquant ? _self.momentMarquant : momentMarquant // ignore: cast_nullable_to_non_nullable
as String,progressionSemaine: null == progressionSemaine ? _self.progressionSemaine : progressionSemaine // ignore: cast_nullable_to_non_nullable
as String,analyseGlobale: null == analyseGlobale ? _self.analyseGlobale : analyseGlobale // ignore: cast_nullable_to_non_nullable
as String,suggestions: null == suggestions ? _self.suggestions : suggestions // ignore: cast_nullable_to_non_nullable
as List<String>,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,startDate: null == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as String,endDate: null == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of AIAnalysisReportLocalModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StatsConfianceCopyWith<$Res> get statsConfiance {
  
  return $StatsConfianceCopyWith<$Res>(_self.statsConfiance, (value) {
    return _then(_self.copyWith(statsConfiance: value));
  });
}/// Create a copy of AIAnalysisReportLocalModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategorieDominanteCopyWith<$Res> get categorieDominante {
  
  return $CategorieDominanteCopyWith<$Res>(_self.categorieDominante, (value) {
    return _then(_self.copyWith(categorieDominante: value));
  });
}
}


/// Adds pattern-matching-related methods to [AIAnalysisReportLocalModel].
extension AIAnalysisReportLocalModelPatterns on AIAnalysisReportLocalModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AIAnalysisReportLocalModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AIAnalysisReportLocalModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AIAnalysisReportLocalModel value)  $default,){
final _that = this;
switch (_that) {
case _AIAnalysisReportLocalModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AIAnalysisReportLocalModel value)?  $default,){
final _that = this;
switch (_that) {
case _AIAnalysisReportLocalModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@StatsConfianceConverter()  StatsConfiance statsConfiance, @CategorieDominanteConverter()  CategorieDominante categorieDominante,  String humeurGenerale,  String momentMarquant,  String progressionSemaine,  String analyseGlobale,  List<String> suggestions,  String id,  String startDate,  String endDate,  String createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AIAnalysisReportLocalModel() when $default != null:
return $default(_that.statsConfiance,_that.categorieDominante,_that.humeurGenerale,_that.momentMarquant,_that.progressionSemaine,_that.analyseGlobale,_that.suggestions,_that.id,_that.startDate,_that.endDate,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@StatsConfianceConverter()  StatsConfiance statsConfiance, @CategorieDominanteConverter()  CategorieDominante categorieDominante,  String humeurGenerale,  String momentMarquant,  String progressionSemaine,  String analyseGlobale,  List<String> suggestions,  String id,  String startDate,  String endDate,  String createdAt)  $default,) {final _that = this;
switch (_that) {
case _AIAnalysisReportLocalModel():
return $default(_that.statsConfiance,_that.categorieDominante,_that.humeurGenerale,_that.momentMarquant,_that.progressionSemaine,_that.analyseGlobale,_that.suggestions,_that.id,_that.startDate,_that.endDate,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@StatsConfianceConverter()  StatsConfiance statsConfiance, @CategorieDominanteConverter()  CategorieDominante categorieDominante,  String humeurGenerale,  String momentMarquant,  String progressionSemaine,  String analyseGlobale,  List<String> suggestions,  String id,  String startDate,  String endDate,  String createdAt)?  $default,) {final _that = this;
switch (_that) {
case _AIAnalysisReportLocalModel() when $default != null:
return $default(_that.statsConfiance,_that.categorieDominante,_that.humeurGenerale,_that.momentMarquant,_that.progressionSemaine,_that.analyseGlobale,_that.suggestions,_that.id,_that.startDate,_that.endDate,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AIAnalysisReportLocalModel implements AIAnalysisReportLocalModel {
  const _AIAnalysisReportLocalModel({@StatsConfianceConverter() required this.statsConfiance, @CategorieDominanteConverter() required this.categorieDominante, required this.humeurGenerale, required this.momentMarquant, required this.progressionSemaine, required this.analyseGlobale, required final  List<String> suggestions, required this.id, required this.startDate, required this.endDate, required this.createdAt}): _suggestions = suggestions;
  factory _AIAnalysisReportLocalModel.fromJson(Map<String, dynamic> json) => _$AIAnalysisReportLocalModelFromJson(json);

@override@StatsConfianceConverter() final  StatsConfiance statsConfiance;
@override@CategorieDominanteConverter() final  CategorieDominante categorieDominante;
@override final  String humeurGenerale;
@override final  String momentMarquant;
@override final  String progressionSemaine;
@override final  String analyseGlobale;
 final  List<String> _suggestions;
@override List<String> get suggestions {
  if (_suggestions is EqualUnmodifiableListView) return _suggestions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_suggestions);
}

@override final  String id;
@override final  String startDate;
@override final  String endDate;
@override final  String createdAt;

/// Create a copy of AIAnalysisReportLocalModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AIAnalysisReportLocalModelCopyWith<_AIAnalysisReportLocalModel> get copyWith => __$AIAnalysisReportLocalModelCopyWithImpl<_AIAnalysisReportLocalModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AIAnalysisReportLocalModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AIAnalysisReportLocalModel&&(identical(other.statsConfiance, statsConfiance) || other.statsConfiance == statsConfiance)&&(identical(other.categorieDominante, categorieDominante) || other.categorieDominante == categorieDominante)&&(identical(other.humeurGenerale, humeurGenerale) || other.humeurGenerale == humeurGenerale)&&(identical(other.momentMarquant, momentMarquant) || other.momentMarquant == momentMarquant)&&(identical(other.progressionSemaine, progressionSemaine) || other.progressionSemaine == progressionSemaine)&&(identical(other.analyseGlobale, analyseGlobale) || other.analyseGlobale == analyseGlobale)&&const DeepCollectionEquality().equals(other._suggestions, _suggestions)&&(identical(other.id, id) || other.id == id)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,statsConfiance,categorieDominante,humeurGenerale,momentMarquant,progressionSemaine,analyseGlobale,const DeepCollectionEquality().hash(_suggestions),id,startDate,endDate,createdAt);

@override
String toString() {
  return 'AIAnalysisReportLocalModel(statsConfiance: $statsConfiance, categorieDominante: $categorieDominante, humeurGenerale: $humeurGenerale, momentMarquant: $momentMarquant, progressionSemaine: $progressionSemaine, analyseGlobale: $analyseGlobale, suggestions: $suggestions, id: $id, startDate: $startDate, endDate: $endDate, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$AIAnalysisReportLocalModelCopyWith<$Res> implements $AIAnalysisReportLocalModelCopyWith<$Res> {
  factory _$AIAnalysisReportLocalModelCopyWith(_AIAnalysisReportLocalModel value, $Res Function(_AIAnalysisReportLocalModel) _then) = __$AIAnalysisReportLocalModelCopyWithImpl;
@override @useResult
$Res call({
@StatsConfianceConverter() StatsConfiance statsConfiance,@CategorieDominanteConverter() CategorieDominante categorieDominante, String humeurGenerale, String momentMarquant, String progressionSemaine, String analyseGlobale, List<String> suggestions, String id, String startDate, String endDate, String createdAt
});


@override $StatsConfianceCopyWith<$Res> get statsConfiance;@override $CategorieDominanteCopyWith<$Res> get categorieDominante;

}
/// @nodoc
class __$AIAnalysisReportLocalModelCopyWithImpl<$Res>
    implements _$AIAnalysisReportLocalModelCopyWith<$Res> {
  __$AIAnalysisReportLocalModelCopyWithImpl(this._self, this._then);

  final _AIAnalysisReportLocalModel _self;
  final $Res Function(_AIAnalysisReportLocalModel) _then;

/// Create a copy of AIAnalysisReportLocalModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? statsConfiance = null,Object? categorieDominante = null,Object? humeurGenerale = null,Object? momentMarquant = null,Object? progressionSemaine = null,Object? analyseGlobale = null,Object? suggestions = null,Object? id = null,Object? startDate = null,Object? endDate = null,Object? createdAt = null,}) {
  return _then(_AIAnalysisReportLocalModel(
statsConfiance: null == statsConfiance ? _self.statsConfiance : statsConfiance // ignore: cast_nullable_to_non_nullable
as StatsConfiance,categorieDominante: null == categorieDominante ? _self.categorieDominante : categorieDominante // ignore: cast_nullable_to_non_nullable
as CategorieDominante,humeurGenerale: null == humeurGenerale ? _self.humeurGenerale : humeurGenerale // ignore: cast_nullable_to_non_nullable
as String,momentMarquant: null == momentMarquant ? _self.momentMarquant : momentMarquant // ignore: cast_nullable_to_non_nullable
as String,progressionSemaine: null == progressionSemaine ? _self.progressionSemaine : progressionSemaine // ignore: cast_nullable_to_non_nullable
as String,analyseGlobale: null == analyseGlobale ? _self.analyseGlobale : analyseGlobale // ignore: cast_nullable_to_non_nullable
as String,suggestions: null == suggestions ? _self._suggestions : suggestions // ignore: cast_nullable_to_non_nullable
as List<String>,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,startDate: null == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as String,endDate: null == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of AIAnalysisReportLocalModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StatsConfianceCopyWith<$Res> get statsConfiance {
  
  return $StatsConfianceCopyWith<$Res>(_self.statsConfiance, (value) {
    return _then(_self.copyWith(statsConfiance: value));
  });
}/// Create a copy of AIAnalysisReportLocalModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategorieDominanteCopyWith<$Res> get categorieDominante {
  
  return $CategorieDominanteCopyWith<$Res>(_self.categorieDominante, (value) {
    return _then(_self.copyWith(categorieDominante: value));
  });
}
}

// dart format on
