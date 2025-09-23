// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ai_analysis.entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AIAnalysisEntity _$AIAnalysisEntityFromJson(Map<String, dynamic> json) =>
    _AIAnalysisEntity(
      statsConfiance: StatsConfiance.fromJson(
        json['statsConfiance'] as Map<String, dynamic>,
      ),
      categorieDominante: CategorieDominante.fromJson(
        json['categorieDominante'] as Map<String, dynamic>,
      ),
      humeurGenerale: json['humeurGenerale'] as String,
      momentMarquant: json['momentMarquant'] as String,
      progressionSemaine: json['progressionSemaine'] as String,
      analyseGlobale: json['analyseGlobale'] as String,
      suggestions: (json['suggestions'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      id: json['id'] as String?,
      startDate: json['startDate'] == null
          ? null
          : DateTime.parse(json['startDate'] as String),
      endDate: json['endDate'] == null
          ? null
          : DateTime.parse(json['endDate'] as String),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$AIAnalysisEntityToJson(_AIAnalysisEntity instance) =>
    <String, dynamic>{
      'statsConfiance': instance.statsConfiance,
      'categorieDominante': instance.categorieDominante,
      'humeurGenerale': instance.humeurGenerale,
      'momentMarquant': instance.momentMarquant,
      'progressionSemaine': instance.progressionSemaine,
      'analyseGlobale': instance.analyseGlobale,
      'suggestions': instance.suggestions,
      'id': instance.id,
      'startDate': instance.startDate?.toIso8601String(),
      'endDate': instance.endDate?.toIso8601String(),
      'createdAt': instance.createdAt?.toIso8601String(),
    };

_StatsConfiance _$StatsConfianceFromJson(Map<String, dynamic> json) =>
    _StatsConfiance(
      joursRemplis: (json['joursRemplis'] as num).toInt(),
      streak: (json['streak'] as num).toInt(),
      pourcentageCompletion: (json['pourcentageCompletion'] as num).toDouble(),
    );

Map<String, dynamic> _$StatsConfianceToJson(_StatsConfiance instance) =>
    <String, dynamic>{
      'joursRemplis': instance.joursRemplis,
      'streak': instance.streak,
      'pourcentageCompletion': instance.pourcentageCompletion,
    };

_CategorieDominante _$CategorieDominanteFromJson(Map<String, dynamic> json) =>
    _CategorieDominante(
      nom: json['nom'] as String,
      proportion: (json['proportion'] as num).toDouble(),
    );

Map<String, dynamic> _$CategorieDominanteToJson(_CategorieDominante instance) =>
    <String, dynamic>{'nom': instance.nom, 'proportion': instance.proportion};
