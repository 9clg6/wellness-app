// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ai_analysis.remote.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AIAnalysisModel {

@JsonKey(name: 'stats_confiance') StatsConfianceModel get statsConfiance;@JsonKey(name: 'categorie_dominante') CategorieDominanteModel get categorieDominante;@JsonKey(name: 'humeur_generale') String get humeurGenerale;@JsonKey(name: 'moment_marquant') String get momentMarquant;@JsonKey(name: 'progression_semaine') String get progressionSemaine;@JsonKey(name: 'analyse_globale') String get analyseGlobale;@JsonKey(name: 'suggestions') List<String> get suggestions;
/// Create a copy of AIAnalysisModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AIAnalysisModelCopyWith<AIAnalysisModel> get copyWith => _$AIAnalysisModelCopyWithImpl<AIAnalysisModel>(this as AIAnalysisModel, _$identity);

  /// Serializes this AIAnalysisModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AIAnalysisModel&&(identical(other.statsConfiance, statsConfiance) || other.statsConfiance == statsConfiance)&&(identical(other.categorieDominante, categorieDominante) || other.categorieDominante == categorieDominante)&&(identical(other.humeurGenerale, humeurGenerale) || other.humeurGenerale == humeurGenerale)&&(identical(other.momentMarquant, momentMarquant) || other.momentMarquant == momentMarquant)&&(identical(other.progressionSemaine, progressionSemaine) || other.progressionSemaine == progressionSemaine)&&(identical(other.analyseGlobale, analyseGlobale) || other.analyseGlobale == analyseGlobale)&&const DeepCollectionEquality().equals(other.suggestions, suggestions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,statsConfiance,categorieDominante,humeurGenerale,momentMarquant,progressionSemaine,analyseGlobale,const DeepCollectionEquality().hash(suggestions));

@override
String toString() {
  return 'AIAnalysisModel(statsConfiance: $statsConfiance, categorieDominante: $categorieDominante, humeurGenerale: $humeurGenerale, momentMarquant: $momentMarquant, progressionSemaine: $progressionSemaine, analyseGlobale: $analyseGlobale, suggestions: $suggestions)';
}


}

/// @nodoc
abstract mixin class $AIAnalysisModelCopyWith<$Res>  {
  factory $AIAnalysisModelCopyWith(AIAnalysisModel value, $Res Function(AIAnalysisModel) _then) = _$AIAnalysisModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'stats_confiance') StatsConfianceModel statsConfiance,@JsonKey(name: 'categorie_dominante') CategorieDominanteModel categorieDominante,@JsonKey(name: 'humeur_generale') String humeurGenerale,@JsonKey(name: 'moment_marquant') String momentMarquant,@JsonKey(name: 'progression_semaine') String progressionSemaine,@JsonKey(name: 'analyse_globale') String analyseGlobale,@JsonKey(name: 'suggestions') List<String> suggestions
});


$StatsConfianceModelCopyWith<$Res> get statsConfiance;$CategorieDominanteModelCopyWith<$Res> get categorieDominante;

}
/// @nodoc
class _$AIAnalysisModelCopyWithImpl<$Res>
    implements $AIAnalysisModelCopyWith<$Res> {
  _$AIAnalysisModelCopyWithImpl(this._self, this._then);

  final AIAnalysisModel _self;
  final $Res Function(AIAnalysisModel) _then;

/// Create a copy of AIAnalysisModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? statsConfiance = null,Object? categorieDominante = null,Object? humeurGenerale = null,Object? momentMarquant = null,Object? progressionSemaine = null,Object? analyseGlobale = null,Object? suggestions = null,}) {
  return _then(_self.copyWith(
statsConfiance: null == statsConfiance ? _self.statsConfiance : statsConfiance // ignore: cast_nullable_to_non_nullable
as StatsConfianceModel,categorieDominante: null == categorieDominante ? _self.categorieDominante : categorieDominante // ignore: cast_nullable_to_non_nullable
as CategorieDominanteModel,humeurGenerale: null == humeurGenerale ? _self.humeurGenerale : humeurGenerale // ignore: cast_nullable_to_non_nullable
as String,momentMarquant: null == momentMarquant ? _self.momentMarquant : momentMarquant // ignore: cast_nullable_to_non_nullable
as String,progressionSemaine: null == progressionSemaine ? _self.progressionSemaine : progressionSemaine // ignore: cast_nullable_to_non_nullable
as String,analyseGlobale: null == analyseGlobale ? _self.analyseGlobale : analyseGlobale // ignore: cast_nullable_to_non_nullable
as String,suggestions: null == suggestions ? _self.suggestions : suggestions // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}
/// Create a copy of AIAnalysisModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StatsConfianceModelCopyWith<$Res> get statsConfiance {
  
  return $StatsConfianceModelCopyWith<$Res>(_self.statsConfiance, (value) {
    return _then(_self.copyWith(statsConfiance: value));
  });
}/// Create a copy of AIAnalysisModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategorieDominanteModelCopyWith<$Res> get categorieDominante {
  
  return $CategorieDominanteModelCopyWith<$Res>(_self.categorieDominante, (value) {
    return _then(_self.copyWith(categorieDominante: value));
  });
}
}


/// Adds pattern-matching-related methods to [AIAnalysisModel].
extension AIAnalysisModelPatterns on AIAnalysisModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AIAnalysisModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AIAnalysisModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AIAnalysisModel value)  $default,){
final _that = this;
switch (_that) {
case _AIAnalysisModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AIAnalysisModel value)?  $default,){
final _that = this;
switch (_that) {
case _AIAnalysisModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'stats_confiance')  StatsConfianceModel statsConfiance, @JsonKey(name: 'categorie_dominante')  CategorieDominanteModel categorieDominante, @JsonKey(name: 'humeur_generale')  String humeurGenerale, @JsonKey(name: 'moment_marquant')  String momentMarquant, @JsonKey(name: 'progression_semaine')  String progressionSemaine, @JsonKey(name: 'analyse_globale')  String analyseGlobale, @JsonKey(name: 'suggestions')  List<String> suggestions)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AIAnalysisModel() when $default != null:
return $default(_that.statsConfiance,_that.categorieDominante,_that.humeurGenerale,_that.momentMarquant,_that.progressionSemaine,_that.analyseGlobale,_that.suggestions);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'stats_confiance')  StatsConfianceModel statsConfiance, @JsonKey(name: 'categorie_dominante')  CategorieDominanteModel categorieDominante, @JsonKey(name: 'humeur_generale')  String humeurGenerale, @JsonKey(name: 'moment_marquant')  String momentMarquant, @JsonKey(name: 'progression_semaine')  String progressionSemaine, @JsonKey(name: 'analyse_globale')  String analyseGlobale, @JsonKey(name: 'suggestions')  List<String> suggestions)  $default,) {final _that = this;
switch (_that) {
case _AIAnalysisModel():
return $default(_that.statsConfiance,_that.categorieDominante,_that.humeurGenerale,_that.momentMarquant,_that.progressionSemaine,_that.analyseGlobale,_that.suggestions);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'stats_confiance')  StatsConfianceModel statsConfiance, @JsonKey(name: 'categorie_dominante')  CategorieDominanteModel categorieDominante, @JsonKey(name: 'humeur_generale')  String humeurGenerale, @JsonKey(name: 'moment_marquant')  String momentMarquant, @JsonKey(name: 'progression_semaine')  String progressionSemaine, @JsonKey(name: 'analyse_globale')  String analyseGlobale, @JsonKey(name: 'suggestions')  List<String> suggestions)?  $default,) {final _that = this;
switch (_that) {
case _AIAnalysisModel() when $default != null:
return $default(_that.statsConfiance,_that.categorieDominante,_that.humeurGenerale,_that.momentMarquant,_that.progressionSemaine,_that.analyseGlobale,_that.suggestions);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AIAnalysisModel implements AIAnalysisModel {
   _AIAnalysisModel({@JsonKey(name: 'stats_confiance') required this.statsConfiance, @JsonKey(name: 'categorie_dominante') required this.categorieDominante, @JsonKey(name: 'humeur_generale') required this.humeurGenerale, @JsonKey(name: 'moment_marquant') required this.momentMarquant, @JsonKey(name: 'progression_semaine') required this.progressionSemaine, @JsonKey(name: 'analyse_globale') required this.analyseGlobale, @JsonKey(name: 'suggestions') required final  List<String> suggestions}): _suggestions = suggestions;
  factory _AIAnalysisModel.fromJson(Map<String, dynamic> json) => _$AIAnalysisModelFromJson(json);

@override@JsonKey(name: 'stats_confiance') final  StatsConfianceModel statsConfiance;
@override@JsonKey(name: 'categorie_dominante') final  CategorieDominanteModel categorieDominante;
@override@JsonKey(name: 'humeur_generale') final  String humeurGenerale;
@override@JsonKey(name: 'moment_marquant') final  String momentMarquant;
@override@JsonKey(name: 'progression_semaine') final  String progressionSemaine;
@override@JsonKey(name: 'analyse_globale') final  String analyseGlobale;
 final  List<String> _suggestions;
@override@JsonKey(name: 'suggestions') List<String> get suggestions {
  if (_suggestions is EqualUnmodifiableListView) return _suggestions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_suggestions);
}


/// Create a copy of AIAnalysisModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AIAnalysisModelCopyWith<_AIAnalysisModel> get copyWith => __$AIAnalysisModelCopyWithImpl<_AIAnalysisModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AIAnalysisModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AIAnalysisModel&&(identical(other.statsConfiance, statsConfiance) || other.statsConfiance == statsConfiance)&&(identical(other.categorieDominante, categorieDominante) || other.categorieDominante == categorieDominante)&&(identical(other.humeurGenerale, humeurGenerale) || other.humeurGenerale == humeurGenerale)&&(identical(other.momentMarquant, momentMarquant) || other.momentMarquant == momentMarquant)&&(identical(other.progressionSemaine, progressionSemaine) || other.progressionSemaine == progressionSemaine)&&(identical(other.analyseGlobale, analyseGlobale) || other.analyseGlobale == analyseGlobale)&&const DeepCollectionEquality().equals(other._suggestions, _suggestions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,statsConfiance,categorieDominante,humeurGenerale,momentMarquant,progressionSemaine,analyseGlobale,const DeepCollectionEquality().hash(_suggestions));

@override
String toString() {
  return 'AIAnalysisModel(statsConfiance: $statsConfiance, categorieDominante: $categorieDominante, humeurGenerale: $humeurGenerale, momentMarquant: $momentMarquant, progressionSemaine: $progressionSemaine, analyseGlobale: $analyseGlobale, suggestions: $suggestions)';
}


}

/// @nodoc
abstract mixin class _$AIAnalysisModelCopyWith<$Res> implements $AIAnalysisModelCopyWith<$Res> {
  factory _$AIAnalysisModelCopyWith(_AIAnalysisModel value, $Res Function(_AIAnalysisModel) _then) = __$AIAnalysisModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'stats_confiance') StatsConfianceModel statsConfiance,@JsonKey(name: 'categorie_dominante') CategorieDominanteModel categorieDominante,@JsonKey(name: 'humeur_generale') String humeurGenerale,@JsonKey(name: 'moment_marquant') String momentMarquant,@JsonKey(name: 'progression_semaine') String progressionSemaine,@JsonKey(name: 'analyse_globale') String analyseGlobale,@JsonKey(name: 'suggestions') List<String> suggestions
});


@override $StatsConfianceModelCopyWith<$Res> get statsConfiance;@override $CategorieDominanteModelCopyWith<$Res> get categorieDominante;

}
/// @nodoc
class __$AIAnalysisModelCopyWithImpl<$Res>
    implements _$AIAnalysisModelCopyWith<$Res> {
  __$AIAnalysisModelCopyWithImpl(this._self, this._then);

  final _AIAnalysisModel _self;
  final $Res Function(_AIAnalysisModel) _then;

/// Create a copy of AIAnalysisModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? statsConfiance = null,Object? categorieDominante = null,Object? humeurGenerale = null,Object? momentMarquant = null,Object? progressionSemaine = null,Object? analyseGlobale = null,Object? suggestions = null,}) {
  return _then(_AIAnalysisModel(
statsConfiance: null == statsConfiance ? _self.statsConfiance : statsConfiance // ignore: cast_nullable_to_non_nullable
as StatsConfianceModel,categorieDominante: null == categorieDominante ? _self.categorieDominante : categorieDominante // ignore: cast_nullable_to_non_nullable
as CategorieDominanteModel,humeurGenerale: null == humeurGenerale ? _self.humeurGenerale : humeurGenerale // ignore: cast_nullable_to_non_nullable
as String,momentMarquant: null == momentMarquant ? _self.momentMarquant : momentMarquant // ignore: cast_nullable_to_non_nullable
as String,progressionSemaine: null == progressionSemaine ? _self.progressionSemaine : progressionSemaine // ignore: cast_nullable_to_non_nullable
as String,analyseGlobale: null == analyseGlobale ? _self.analyseGlobale : analyseGlobale // ignore: cast_nullable_to_non_nullable
as String,suggestions: null == suggestions ? _self._suggestions : suggestions // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

/// Create a copy of AIAnalysisModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StatsConfianceModelCopyWith<$Res> get statsConfiance {
  
  return $StatsConfianceModelCopyWith<$Res>(_self.statsConfiance, (value) {
    return _then(_self.copyWith(statsConfiance: value));
  });
}/// Create a copy of AIAnalysisModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategorieDominanteModelCopyWith<$Res> get categorieDominante {
  
  return $CategorieDominanteModelCopyWith<$Res>(_self.categorieDominante, (value) {
    return _then(_self.copyWith(categorieDominante: value));
  });
}
}


/// @nodoc
mixin _$StatsConfianceModel {

@JsonKey(name: 'jours_remplis') int get joursRemplis;@JsonKey(name: 'streak') int get streak;@JsonKey(name: 'pourcentage_completion') double get pourcentageCompletion;
/// Create a copy of StatsConfianceModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StatsConfianceModelCopyWith<StatsConfianceModel> get copyWith => _$StatsConfianceModelCopyWithImpl<StatsConfianceModel>(this as StatsConfianceModel, _$identity);

  /// Serializes this StatsConfianceModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StatsConfianceModel&&(identical(other.joursRemplis, joursRemplis) || other.joursRemplis == joursRemplis)&&(identical(other.streak, streak) || other.streak == streak)&&(identical(other.pourcentageCompletion, pourcentageCompletion) || other.pourcentageCompletion == pourcentageCompletion));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,joursRemplis,streak,pourcentageCompletion);

@override
String toString() {
  return 'StatsConfianceModel(joursRemplis: $joursRemplis, streak: $streak, pourcentageCompletion: $pourcentageCompletion)';
}


}

/// @nodoc
abstract mixin class $StatsConfianceModelCopyWith<$Res>  {
  factory $StatsConfianceModelCopyWith(StatsConfianceModel value, $Res Function(StatsConfianceModel) _then) = _$StatsConfianceModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'jours_remplis') int joursRemplis,@JsonKey(name: 'streak') int streak,@JsonKey(name: 'pourcentage_completion') double pourcentageCompletion
});




}
/// @nodoc
class _$StatsConfianceModelCopyWithImpl<$Res>
    implements $StatsConfianceModelCopyWith<$Res> {
  _$StatsConfianceModelCopyWithImpl(this._self, this._then);

  final StatsConfianceModel _self;
  final $Res Function(StatsConfianceModel) _then;

/// Create a copy of StatsConfianceModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? joursRemplis = null,Object? streak = null,Object? pourcentageCompletion = null,}) {
  return _then(_self.copyWith(
joursRemplis: null == joursRemplis ? _self.joursRemplis : joursRemplis // ignore: cast_nullable_to_non_nullable
as int,streak: null == streak ? _self.streak : streak // ignore: cast_nullable_to_non_nullable
as int,pourcentageCompletion: null == pourcentageCompletion ? _self.pourcentageCompletion : pourcentageCompletion // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [StatsConfianceModel].
extension StatsConfianceModelPatterns on StatsConfianceModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StatsConfianceModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StatsConfianceModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StatsConfianceModel value)  $default,){
final _that = this;
switch (_that) {
case _StatsConfianceModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StatsConfianceModel value)?  $default,){
final _that = this;
switch (_that) {
case _StatsConfianceModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'jours_remplis')  int joursRemplis, @JsonKey(name: 'streak')  int streak, @JsonKey(name: 'pourcentage_completion')  double pourcentageCompletion)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StatsConfianceModel() when $default != null:
return $default(_that.joursRemplis,_that.streak,_that.pourcentageCompletion);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'jours_remplis')  int joursRemplis, @JsonKey(name: 'streak')  int streak, @JsonKey(name: 'pourcentage_completion')  double pourcentageCompletion)  $default,) {final _that = this;
switch (_that) {
case _StatsConfianceModel():
return $default(_that.joursRemplis,_that.streak,_that.pourcentageCompletion);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'jours_remplis')  int joursRemplis, @JsonKey(name: 'streak')  int streak, @JsonKey(name: 'pourcentage_completion')  double pourcentageCompletion)?  $default,) {final _that = this;
switch (_that) {
case _StatsConfianceModel() when $default != null:
return $default(_that.joursRemplis,_that.streak,_that.pourcentageCompletion);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StatsConfianceModel implements StatsConfianceModel {
   _StatsConfianceModel({@JsonKey(name: 'jours_remplis') required this.joursRemplis, @JsonKey(name: 'streak') required this.streak, @JsonKey(name: 'pourcentage_completion') required this.pourcentageCompletion});
  factory _StatsConfianceModel.fromJson(Map<String, dynamic> json) => _$StatsConfianceModelFromJson(json);

@override@JsonKey(name: 'jours_remplis') final  int joursRemplis;
@override@JsonKey(name: 'streak') final  int streak;
@override@JsonKey(name: 'pourcentage_completion') final  double pourcentageCompletion;

/// Create a copy of StatsConfianceModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StatsConfianceModelCopyWith<_StatsConfianceModel> get copyWith => __$StatsConfianceModelCopyWithImpl<_StatsConfianceModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StatsConfianceModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StatsConfianceModel&&(identical(other.joursRemplis, joursRemplis) || other.joursRemplis == joursRemplis)&&(identical(other.streak, streak) || other.streak == streak)&&(identical(other.pourcentageCompletion, pourcentageCompletion) || other.pourcentageCompletion == pourcentageCompletion));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,joursRemplis,streak,pourcentageCompletion);

@override
String toString() {
  return 'StatsConfianceModel(joursRemplis: $joursRemplis, streak: $streak, pourcentageCompletion: $pourcentageCompletion)';
}


}

/// @nodoc
abstract mixin class _$StatsConfianceModelCopyWith<$Res> implements $StatsConfianceModelCopyWith<$Res> {
  factory _$StatsConfianceModelCopyWith(_StatsConfianceModel value, $Res Function(_StatsConfianceModel) _then) = __$StatsConfianceModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'jours_remplis') int joursRemplis,@JsonKey(name: 'streak') int streak,@JsonKey(name: 'pourcentage_completion') double pourcentageCompletion
});




}
/// @nodoc
class __$StatsConfianceModelCopyWithImpl<$Res>
    implements _$StatsConfianceModelCopyWith<$Res> {
  __$StatsConfianceModelCopyWithImpl(this._self, this._then);

  final _StatsConfianceModel _self;
  final $Res Function(_StatsConfianceModel) _then;

/// Create a copy of StatsConfianceModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? joursRemplis = null,Object? streak = null,Object? pourcentageCompletion = null,}) {
  return _then(_StatsConfianceModel(
joursRemplis: null == joursRemplis ? _self.joursRemplis : joursRemplis // ignore: cast_nullable_to_non_nullable
as int,streak: null == streak ? _self.streak : streak // ignore: cast_nullable_to_non_nullable
as int,pourcentageCompletion: null == pourcentageCompletion ? _self.pourcentageCompletion : pourcentageCompletion // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}


/// @nodoc
mixin _$CategorieDominanteModel {

@JsonKey(name: 'nom') String get nom;@JsonKey(name: 'proportion') double get proportion;
/// Create a copy of CategorieDominanteModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategorieDominanteModelCopyWith<CategorieDominanteModel> get copyWith => _$CategorieDominanteModelCopyWithImpl<CategorieDominanteModel>(this as CategorieDominanteModel, _$identity);

  /// Serializes this CategorieDominanteModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategorieDominanteModel&&(identical(other.nom, nom) || other.nom == nom)&&(identical(other.proportion, proportion) || other.proportion == proportion));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,nom,proportion);

@override
String toString() {
  return 'CategorieDominanteModel(nom: $nom, proportion: $proportion)';
}


}

/// @nodoc
abstract mixin class $CategorieDominanteModelCopyWith<$Res>  {
  factory $CategorieDominanteModelCopyWith(CategorieDominanteModel value, $Res Function(CategorieDominanteModel) _then) = _$CategorieDominanteModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'nom') String nom,@JsonKey(name: 'proportion') double proportion
});




}
/// @nodoc
class _$CategorieDominanteModelCopyWithImpl<$Res>
    implements $CategorieDominanteModelCopyWith<$Res> {
  _$CategorieDominanteModelCopyWithImpl(this._self, this._then);

  final CategorieDominanteModel _self;
  final $Res Function(CategorieDominanteModel) _then;

/// Create a copy of CategorieDominanteModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? nom = null,Object? proportion = null,}) {
  return _then(_self.copyWith(
nom: null == nom ? _self.nom : nom // ignore: cast_nullable_to_non_nullable
as String,proportion: null == proportion ? _self.proportion : proportion // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [CategorieDominanteModel].
extension CategorieDominanteModelPatterns on CategorieDominanteModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CategorieDominanteModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CategorieDominanteModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CategorieDominanteModel value)  $default,){
final _that = this;
switch (_that) {
case _CategorieDominanteModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CategorieDominanteModel value)?  $default,){
final _that = this;
switch (_that) {
case _CategorieDominanteModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'nom')  String nom, @JsonKey(name: 'proportion')  double proportion)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CategorieDominanteModel() when $default != null:
return $default(_that.nom,_that.proportion);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'nom')  String nom, @JsonKey(name: 'proportion')  double proportion)  $default,) {final _that = this;
switch (_that) {
case _CategorieDominanteModel():
return $default(_that.nom,_that.proportion);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'nom')  String nom, @JsonKey(name: 'proportion')  double proportion)?  $default,) {final _that = this;
switch (_that) {
case _CategorieDominanteModel() when $default != null:
return $default(_that.nom,_that.proportion);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CategorieDominanteModel implements CategorieDominanteModel {
   _CategorieDominanteModel({@JsonKey(name: 'nom') required this.nom, @JsonKey(name: 'proportion') required this.proportion});
  factory _CategorieDominanteModel.fromJson(Map<String, dynamic> json) => _$CategorieDominanteModelFromJson(json);

@override@JsonKey(name: 'nom') final  String nom;
@override@JsonKey(name: 'proportion') final  double proportion;

/// Create a copy of CategorieDominanteModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategorieDominanteModelCopyWith<_CategorieDominanteModel> get copyWith => __$CategorieDominanteModelCopyWithImpl<_CategorieDominanteModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CategorieDominanteModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CategorieDominanteModel&&(identical(other.nom, nom) || other.nom == nom)&&(identical(other.proportion, proportion) || other.proportion == proportion));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,nom,proportion);

@override
String toString() {
  return 'CategorieDominanteModel(nom: $nom, proportion: $proportion)';
}


}

/// @nodoc
abstract mixin class _$CategorieDominanteModelCopyWith<$Res> implements $CategorieDominanteModelCopyWith<$Res> {
  factory _$CategorieDominanteModelCopyWith(_CategorieDominanteModel value, $Res Function(_CategorieDominanteModel) _then) = __$CategorieDominanteModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'nom') String nom,@JsonKey(name: 'proportion') double proportion
});




}
/// @nodoc
class __$CategorieDominanteModelCopyWithImpl<$Res>
    implements _$CategorieDominanteModelCopyWith<$Res> {
  __$CategorieDominanteModelCopyWithImpl(this._self, this._then);

  final _CategorieDominanteModel _self;
  final $Res Function(_CategorieDominanteModel) _then;

/// Create a copy of CategorieDominanteModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? nom = null,Object? proportion = null,}) {
  return _then(_CategorieDominanteModel(
nom: null == nom ? _self.nom : nom // ignore: cast_nullable_to_non_nullable
as String,proportion: null == proportion ? _self.proportion : proportion // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
