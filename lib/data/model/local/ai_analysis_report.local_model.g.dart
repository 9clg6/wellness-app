// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ai_analysis_report.local_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AIAnalysisReportLocalModel _$AIAnalysisReportLocalModelFromJson(
  Map<String, dynamic> json,
) => _AIAnalysisReportLocalModel(
  statsConfiance: const StatsConfianceConverter().fromJson(
    json['statsConfiance'] as Map<String, Object?>,
  ),
  categorieDominante: const CategorieDominanteConverter().fromJson(
    json['categorieDominante'] as Map<String, Object?>,
  ),
  humeurGenerale: json['humeurGenerale'] as String,
  momentMarquant: json['momentMarquant'] as String,
  progressionSemaine: json['progressionSemaine'] as String,
  analyseGlobale: json['analyseGlobale'] as String,
  suggestions: (json['suggestions'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  id: json['id'] as String,
  startDate: json['startDate'] as String,
  endDate: json['endDate'] as String,
  createdAt: json['createdAt'] as String,
);

Map<String, dynamic> _$AIAnalysisReportLocalModelToJson(
  _AIAnalysisReportLocalModel instance,
) => <String, dynamic>{
  'statsConfiance': const StatsConfianceConverter().toJson(
    instance.statsConfiance,
  ),
  'categorieDominante': const CategorieDominanteConverter().toJson(
    instance.categorieDominante,
  ),
  'humeurGenerale': instance.humeurGenerale,
  'momentMarquant': instance.momentMarquant,
  'progressionSemaine': instance.progressionSemaine,
  'analyseGlobale': instance.analyseGlobale,
  'suggestions': instance.suggestions,
  'id': instance.id,
  'startDate': instance.startDate,
  'endDate': instance.endDate,
  'createdAt': instance.createdAt,
};
