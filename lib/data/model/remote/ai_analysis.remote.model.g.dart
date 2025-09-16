// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ai_analysis.remote.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AIAnalysisModel _$AIAnalysisModelFromJson(Map<String, dynamic> json) =>
    _AIAnalysisModel(
      statsConfiance: StatsConfianceModel.fromJson(
        json['stats_confiance'] as Map<String, dynamic>,
      ),
      categorieDominante: CategorieDominanteModel.fromJson(
        json['categorie_dominante'] as Map<String, dynamic>,
      ),
      humeurGenerale: json['humeur_generale'] as String,
      momentMarquant: json['moment_marquant'] as String,
      progressionSemaine: json['progression_semaine'] as String,
      analyseGlobale: json['analyse_globale'] as String,
      suggestions: (json['suggestions'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$AIAnalysisModelToJson(_AIAnalysisModel instance) =>
    <String, dynamic>{
      'stats_confiance': instance.statsConfiance,
      'categorie_dominante': instance.categorieDominante,
      'humeur_generale': instance.humeurGenerale,
      'moment_marquant': instance.momentMarquant,
      'progression_semaine': instance.progressionSemaine,
      'analyse_globale': instance.analyseGlobale,
      'suggestions': instance.suggestions,
    };

_StatsConfianceModel _$StatsConfianceModelFromJson(Map<String, dynamic> json) =>
    _StatsConfianceModel(
      joursRemplis: (json['jours_remplis'] as num).toInt(),
      streak: (json['streak'] as num).toInt(),
      pourcentageCompletion: (json['pourcentage_completion'] as num).toDouble(),
    );

Map<String, dynamic> _$StatsConfianceModelToJson(
  _StatsConfianceModel instance,
) => <String, dynamic>{
  'jours_remplis': instance.joursRemplis,
  'streak': instance.streak,
  'pourcentage_completion': instance.pourcentageCompletion,
};

_CategorieDominanteModel _$CategorieDominanteModelFromJson(
  Map<String, dynamic> json,
) => _CategorieDominanteModel(
  nom: json['nom'] as String,
  proportion: (json['proportion'] as num).toDouble(),
);

Map<String, dynamic> _$CategorieDominanteModelToJson(
  _CategorieDominanteModel instance,
) => <String, dynamic>{'nom': instance.nom, 'proportion': instance.proportion};
