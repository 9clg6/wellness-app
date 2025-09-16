// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ai_analysis.entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AIAnalysisEntity {

 StatsConfiance get statsConfiance; CategorieDominante get categorieDominante; String get humeurGenerale; String get momentMarquant; String get progressionSemaine; String get analyseGlobale; List<String> get suggestions;
/// Create a copy of AIAnalysisEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AIAnalysisEntityCopyWith<AIAnalysisEntity> get copyWith => _$AIAnalysisEntityCopyWithImpl<AIAnalysisEntity>(this as AIAnalysisEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AIAnalysisEntity&&(identical(other.statsConfiance, statsConfiance) || other.statsConfiance == statsConfiance)&&(identical(other.categorieDominante, categorieDominante) || other.categorieDominante == categorieDominante)&&(identical(other.humeurGenerale, humeurGenerale) || other.humeurGenerale == humeurGenerale)&&(identical(other.momentMarquant, momentMarquant) || other.momentMarquant == momentMarquant)&&(identical(other.progressionSemaine, progressionSemaine) || other.progressionSemaine == progressionSemaine)&&(identical(other.analyseGlobale, analyseGlobale) || other.analyseGlobale == analyseGlobale)&&const DeepCollectionEquality().equals(other.suggestions, suggestions));
}


@override
int get hashCode => Object.hash(runtimeType,statsConfiance,categorieDominante,humeurGenerale,momentMarquant,progressionSemaine,analyseGlobale,const DeepCollectionEquality().hash(suggestions));

@override
String toString() {
  return 'AIAnalysisEntity(statsConfiance: $statsConfiance, categorieDominante: $categorieDominante, humeurGenerale: $humeurGenerale, momentMarquant: $momentMarquant, progressionSemaine: $progressionSemaine, analyseGlobale: $analyseGlobale, suggestions: $suggestions)';
}


}

/// @nodoc
abstract mixin class $AIAnalysisEntityCopyWith<$Res>  {
  factory $AIAnalysisEntityCopyWith(AIAnalysisEntity value, $Res Function(AIAnalysisEntity) _then) = _$AIAnalysisEntityCopyWithImpl;
@useResult
$Res call({
 StatsConfiance statsConfiance, CategorieDominante categorieDominante, String humeurGenerale, String momentMarquant, String progressionSemaine, String analyseGlobale, List<String> suggestions
});


$StatsConfianceCopyWith<$Res> get statsConfiance;$CategorieDominanteCopyWith<$Res> get categorieDominante;

}
/// @nodoc
class _$AIAnalysisEntityCopyWithImpl<$Res>
    implements $AIAnalysisEntityCopyWith<$Res> {
  _$AIAnalysisEntityCopyWithImpl(this._self, this._then);

  final AIAnalysisEntity _self;
  final $Res Function(AIAnalysisEntity) _then;

/// Create a copy of AIAnalysisEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? statsConfiance = null,Object? categorieDominante = null,Object? humeurGenerale = null,Object? momentMarquant = null,Object? progressionSemaine = null,Object? analyseGlobale = null,Object? suggestions = null,}) {
  return _then(_self.copyWith(
statsConfiance: null == statsConfiance ? _self.statsConfiance : statsConfiance // ignore: cast_nullable_to_non_nullable
as StatsConfiance,categorieDominante: null == categorieDominante ? _self.categorieDominante : categorieDominante // ignore: cast_nullable_to_non_nullable
as CategorieDominante,humeurGenerale: null == humeurGenerale ? _self.humeurGenerale : humeurGenerale // ignore: cast_nullable_to_non_nullable
as String,momentMarquant: null == momentMarquant ? _self.momentMarquant : momentMarquant // ignore: cast_nullable_to_non_nullable
as String,progressionSemaine: null == progressionSemaine ? _self.progressionSemaine : progressionSemaine // ignore: cast_nullable_to_non_nullable
as String,analyseGlobale: null == analyseGlobale ? _self.analyseGlobale : analyseGlobale // ignore: cast_nullable_to_non_nullable
as String,suggestions: null == suggestions ? _self.suggestions : suggestions // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}
/// Create a copy of AIAnalysisEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StatsConfianceCopyWith<$Res> get statsConfiance {
  
  return $StatsConfianceCopyWith<$Res>(_self.statsConfiance, (value) {
    return _then(_self.copyWith(statsConfiance: value));
  });
}/// Create a copy of AIAnalysisEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategorieDominanteCopyWith<$Res> get categorieDominante {
  
  return $CategorieDominanteCopyWith<$Res>(_self.categorieDominante, (value) {
    return _then(_self.copyWith(categorieDominante: value));
  });
}
}


/// Adds pattern-matching-related methods to [AIAnalysisEntity].
extension AIAnalysisEntityPatterns on AIAnalysisEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AIAnalysisEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AIAnalysisEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AIAnalysisEntity value)  $default,){
final _that = this;
switch (_that) {
case _AIAnalysisEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AIAnalysisEntity value)?  $default,){
final _that = this;
switch (_that) {
case _AIAnalysisEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( StatsConfiance statsConfiance,  CategorieDominante categorieDominante,  String humeurGenerale,  String momentMarquant,  String progressionSemaine,  String analyseGlobale,  List<String> suggestions)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AIAnalysisEntity() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( StatsConfiance statsConfiance,  CategorieDominante categorieDominante,  String humeurGenerale,  String momentMarquant,  String progressionSemaine,  String analyseGlobale,  List<String> suggestions)  $default,) {final _that = this;
switch (_that) {
case _AIAnalysisEntity():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( StatsConfiance statsConfiance,  CategorieDominante categorieDominante,  String humeurGenerale,  String momentMarquant,  String progressionSemaine,  String analyseGlobale,  List<String> suggestions)?  $default,) {final _that = this;
switch (_that) {
case _AIAnalysisEntity() when $default != null:
return $default(_that.statsConfiance,_that.categorieDominante,_that.humeurGenerale,_that.momentMarquant,_that.progressionSemaine,_that.analyseGlobale,_that.suggestions);case _:
  return null;

}
}

}

/// @nodoc


class _AIAnalysisEntity implements AIAnalysisEntity {
   _AIAnalysisEntity({required this.statsConfiance, required this.categorieDominante, required this.humeurGenerale, required this.momentMarquant, required this.progressionSemaine, required this.analyseGlobale, required final  List<String> suggestions}): _suggestions = suggestions;
  

@override final  StatsConfiance statsConfiance;
@override final  CategorieDominante categorieDominante;
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


/// Create a copy of AIAnalysisEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AIAnalysisEntityCopyWith<_AIAnalysisEntity> get copyWith => __$AIAnalysisEntityCopyWithImpl<_AIAnalysisEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AIAnalysisEntity&&(identical(other.statsConfiance, statsConfiance) || other.statsConfiance == statsConfiance)&&(identical(other.categorieDominante, categorieDominante) || other.categorieDominante == categorieDominante)&&(identical(other.humeurGenerale, humeurGenerale) || other.humeurGenerale == humeurGenerale)&&(identical(other.momentMarquant, momentMarquant) || other.momentMarquant == momentMarquant)&&(identical(other.progressionSemaine, progressionSemaine) || other.progressionSemaine == progressionSemaine)&&(identical(other.analyseGlobale, analyseGlobale) || other.analyseGlobale == analyseGlobale)&&const DeepCollectionEquality().equals(other._suggestions, _suggestions));
}


@override
int get hashCode => Object.hash(runtimeType,statsConfiance,categorieDominante,humeurGenerale,momentMarquant,progressionSemaine,analyseGlobale,const DeepCollectionEquality().hash(_suggestions));

@override
String toString() {
  return 'AIAnalysisEntity(statsConfiance: $statsConfiance, categorieDominante: $categorieDominante, humeurGenerale: $humeurGenerale, momentMarquant: $momentMarquant, progressionSemaine: $progressionSemaine, analyseGlobale: $analyseGlobale, suggestions: $suggestions)';
}


}

/// @nodoc
abstract mixin class _$AIAnalysisEntityCopyWith<$Res> implements $AIAnalysisEntityCopyWith<$Res> {
  factory _$AIAnalysisEntityCopyWith(_AIAnalysisEntity value, $Res Function(_AIAnalysisEntity) _then) = __$AIAnalysisEntityCopyWithImpl;
@override @useResult
$Res call({
 StatsConfiance statsConfiance, CategorieDominante categorieDominante, String humeurGenerale, String momentMarquant, String progressionSemaine, String analyseGlobale, List<String> suggestions
});


@override $StatsConfianceCopyWith<$Res> get statsConfiance;@override $CategorieDominanteCopyWith<$Res> get categorieDominante;

}
/// @nodoc
class __$AIAnalysisEntityCopyWithImpl<$Res>
    implements _$AIAnalysisEntityCopyWith<$Res> {
  __$AIAnalysisEntityCopyWithImpl(this._self, this._then);

  final _AIAnalysisEntity _self;
  final $Res Function(_AIAnalysisEntity) _then;

/// Create a copy of AIAnalysisEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? statsConfiance = null,Object? categorieDominante = null,Object? humeurGenerale = null,Object? momentMarquant = null,Object? progressionSemaine = null,Object? analyseGlobale = null,Object? suggestions = null,}) {
  return _then(_AIAnalysisEntity(
statsConfiance: null == statsConfiance ? _self.statsConfiance : statsConfiance // ignore: cast_nullable_to_non_nullable
as StatsConfiance,categorieDominante: null == categorieDominante ? _self.categorieDominante : categorieDominante // ignore: cast_nullable_to_non_nullable
as CategorieDominante,humeurGenerale: null == humeurGenerale ? _self.humeurGenerale : humeurGenerale // ignore: cast_nullable_to_non_nullable
as String,momentMarquant: null == momentMarquant ? _self.momentMarquant : momentMarquant // ignore: cast_nullable_to_non_nullable
as String,progressionSemaine: null == progressionSemaine ? _self.progressionSemaine : progressionSemaine // ignore: cast_nullable_to_non_nullable
as String,analyseGlobale: null == analyseGlobale ? _self.analyseGlobale : analyseGlobale // ignore: cast_nullable_to_non_nullable
as String,suggestions: null == suggestions ? _self._suggestions : suggestions // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

/// Create a copy of AIAnalysisEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StatsConfianceCopyWith<$Res> get statsConfiance {
  
  return $StatsConfianceCopyWith<$Res>(_self.statsConfiance, (value) {
    return _then(_self.copyWith(statsConfiance: value));
  });
}/// Create a copy of AIAnalysisEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategorieDominanteCopyWith<$Res> get categorieDominante {
  
  return $CategorieDominanteCopyWith<$Res>(_self.categorieDominante, (value) {
    return _then(_self.copyWith(categorieDominante: value));
  });
}
}

/// @nodoc
mixin _$StatsConfiance {

 int get joursRemplis; int get streak; double get pourcentageCompletion;
/// Create a copy of StatsConfiance
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StatsConfianceCopyWith<StatsConfiance> get copyWith => _$StatsConfianceCopyWithImpl<StatsConfiance>(this as StatsConfiance, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StatsConfiance&&(identical(other.joursRemplis, joursRemplis) || other.joursRemplis == joursRemplis)&&(identical(other.streak, streak) || other.streak == streak)&&(identical(other.pourcentageCompletion, pourcentageCompletion) || other.pourcentageCompletion == pourcentageCompletion));
}


@override
int get hashCode => Object.hash(runtimeType,joursRemplis,streak,pourcentageCompletion);

@override
String toString() {
  return 'StatsConfiance(joursRemplis: $joursRemplis, streak: $streak, pourcentageCompletion: $pourcentageCompletion)';
}


}

/// @nodoc
abstract mixin class $StatsConfianceCopyWith<$Res>  {
  factory $StatsConfianceCopyWith(StatsConfiance value, $Res Function(StatsConfiance) _then) = _$StatsConfianceCopyWithImpl;
@useResult
$Res call({
 int joursRemplis, int streak, double pourcentageCompletion
});




}
/// @nodoc
class _$StatsConfianceCopyWithImpl<$Res>
    implements $StatsConfianceCopyWith<$Res> {
  _$StatsConfianceCopyWithImpl(this._self, this._then);

  final StatsConfiance _self;
  final $Res Function(StatsConfiance) _then;

/// Create a copy of StatsConfiance
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


/// Adds pattern-matching-related methods to [StatsConfiance].
extension StatsConfiancePatterns on StatsConfiance {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StatsConfiance value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StatsConfiance() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StatsConfiance value)  $default,){
final _that = this;
switch (_that) {
case _StatsConfiance():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StatsConfiance value)?  $default,){
final _that = this;
switch (_that) {
case _StatsConfiance() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int joursRemplis,  int streak,  double pourcentageCompletion)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StatsConfiance() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int joursRemplis,  int streak,  double pourcentageCompletion)  $default,) {final _that = this;
switch (_that) {
case _StatsConfiance():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int joursRemplis,  int streak,  double pourcentageCompletion)?  $default,) {final _that = this;
switch (_that) {
case _StatsConfiance() when $default != null:
return $default(_that.joursRemplis,_that.streak,_that.pourcentageCompletion);case _:
  return null;

}
}

}

/// @nodoc


class _StatsConfiance implements StatsConfiance {
   _StatsConfiance({required this.joursRemplis, required this.streak, required this.pourcentageCompletion});
  

@override final  int joursRemplis;
@override final  int streak;
@override final  double pourcentageCompletion;

/// Create a copy of StatsConfiance
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StatsConfianceCopyWith<_StatsConfiance> get copyWith => __$StatsConfianceCopyWithImpl<_StatsConfiance>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StatsConfiance&&(identical(other.joursRemplis, joursRemplis) || other.joursRemplis == joursRemplis)&&(identical(other.streak, streak) || other.streak == streak)&&(identical(other.pourcentageCompletion, pourcentageCompletion) || other.pourcentageCompletion == pourcentageCompletion));
}


@override
int get hashCode => Object.hash(runtimeType,joursRemplis,streak,pourcentageCompletion);

@override
String toString() {
  return 'StatsConfiance(joursRemplis: $joursRemplis, streak: $streak, pourcentageCompletion: $pourcentageCompletion)';
}


}

/// @nodoc
abstract mixin class _$StatsConfianceCopyWith<$Res> implements $StatsConfianceCopyWith<$Res> {
  factory _$StatsConfianceCopyWith(_StatsConfiance value, $Res Function(_StatsConfiance) _then) = __$StatsConfianceCopyWithImpl;
@override @useResult
$Res call({
 int joursRemplis, int streak, double pourcentageCompletion
});




}
/// @nodoc
class __$StatsConfianceCopyWithImpl<$Res>
    implements _$StatsConfianceCopyWith<$Res> {
  __$StatsConfianceCopyWithImpl(this._self, this._then);

  final _StatsConfiance _self;
  final $Res Function(_StatsConfiance) _then;

/// Create a copy of StatsConfiance
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? joursRemplis = null,Object? streak = null,Object? pourcentageCompletion = null,}) {
  return _then(_StatsConfiance(
joursRemplis: null == joursRemplis ? _self.joursRemplis : joursRemplis // ignore: cast_nullable_to_non_nullable
as int,streak: null == streak ? _self.streak : streak // ignore: cast_nullable_to_non_nullable
as int,pourcentageCompletion: null == pourcentageCompletion ? _self.pourcentageCompletion : pourcentageCompletion // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

/// @nodoc
mixin _$CategorieDominante {

 String get nom; double get proportion;
/// Create a copy of CategorieDominante
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategorieDominanteCopyWith<CategorieDominante> get copyWith => _$CategorieDominanteCopyWithImpl<CategorieDominante>(this as CategorieDominante, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategorieDominante&&(identical(other.nom, nom) || other.nom == nom)&&(identical(other.proportion, proportion) || other.proportion == proportion));
}


@override
int get hashCode => Object.hash(runtimeType,nom,proportion);

@override
String toString() {
  return 'CategorieDominante(nom: $nom, proportion: $proportion)';
}


}

/// @nodoc
abstract mixin class $CategorieDominanteCopyWith<$Res>  {
  factory $CategorieDominanteCopyWith(CategorieDominante value, $Res Function(CategorieDominante) _then) = _$CategorieDominanteCopyWithImpl;
@useResult
$Res call({
 String nom, double proportion
});




}
/// @nodoc
class _$CategorieDominanteCopyWithImpl<$Res>
    implements $CategorieDominanteCopyWith<$Res> {
  _$CategorieDominanteCopyWithImpl(this._self, this._then);

  final CategorieDominante _self;
  final $Res Function(CategorieDominante) _then;

/// Create a copy of CategorieDominante
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? nom = null,Object? proportion = null,}) {
  return _then(_self.copyWith(
nom: null == nom ? _self.nom : nom // ignore: cast_nullable_to_non_nullable
as String,proportion: null == proportion ? _self.proportion : proportion // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [CategorieDominante].
extension CategorieDominantePatterns on CategorieDominante {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CategorieDominante value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CategorieDominante() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CategorieDominante value)  $default,){
final _that = this;
switch (_that) {
case _CategorieDominante():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CategorieDominante value)?  $default,){
final _that = this;
switch (_that) {
case _CategorieDominante() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String nom,  double proportion)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CategorieDominante() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String nom,  double proportion)  $default,) {final _that = this;
switch (_that) {
case _CategorieDominante():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String nom,  double proportion)?  $default,) {final _that = this;
switch (_that) {
case _CategorieDominante() when $default != null:
return $default(_that.nom,_that.proportion);case _:
  return null;

}
}

}

/// @nodoc


class _CategorieDominante implements CategorieDominante {
   _CategorieDominante({required this.nom, required this.proportion});
  

@override final  String nom;
@override final  double proportion;

/// Create a copy of CategorieDominante
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategorieDominanteCopyWith<_CategorieDominante> get copyWith => __$CategorieDominanteCopyWithImpl<_CategorieDominante>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CategorieDominante&&(identical(other.nom, nom) || other.nom == nom)&&(identical(other.proportion, proportion) || other.proportion == proportion));
}


@override
int get hashCode => Object.hash(runtimeType,nom,proportion);

@override
String toString() {
  return 'CategorieDominante(nom: $nom, proportion: $proportion)';
}


}

/// @nodoc
abstract mixin class _$CategorieDominanteCopyWith<$Res> implements $CategorieDominanteCopyWith<$Res> {
  factory _$CategorieDominanteCopyWith(_CategorieDominante value, $Res Function(_CategorieDominante) _then) = __$CategorieDominanteCopyWithImpl;
@override @useResult
$Res call({
 String nom, double proportion
});




}
/// @nodoc
class __$CategorieDominanteCopyWithImpl<$Res>
    implements _$CategorieDominanteCopyWith<$Res> {
  __$CategorieDominanteCopyWithImpl(this._self, this._then);

  final _CategorieDominante _self;
  final $Res Function(_CategorieDominante) _then;

/// Create a copy of CategorieDominante
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? nom = null,Object? proportion = null,}) {
  return _then(_CategorieDominante(
nom: null == nom ? _self.nom : nom // ignore: cast_nullable_to_non_nullable
as String,proportion: null == proportion ? _self.proportion : proportion // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
