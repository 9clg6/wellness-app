import 'package:freezed_annotation/freezed_annotation.dart';

part 'ai_analysis.entity.freezed.dart';
part 'ai_analysis.entity.g.dart';

/// Entity representing AI analysis results
@freezed
abstract class AIAnalysisEntity with _$AIAnalysisEntity {
  /// Constructor
  factory AIAnalysisEntity({
    required StatsConfiance statsConfiance,
    required CategorieDominante categorieDominante,
    required String humeurGenerale,
    required String momentMarquant,
    required String progressionSemaine,
    required String analyseGlobale,
    required List<String> suggestions,
    String? id,
    DateTime? startDate,
    DateTime? endDate,
    DateTime? createdAt,
  }) = _AIAnalysisEntity;

  /// Create from JSON
  factory AIAnalysisEntity.fromJson(Map<String, Object?> json) =>
      _$AIAnalysisEntityFromJson(json);
}

/// Confidence statistics data
@freezed
abstract class StatsConfiance with _$StatsConfiance {
  /// Constructor
  factory StatsConfiance({
    required int joursRemplis,
    required int streak,
    required double pourcentageCompletion,
  }) = _StatsConfiance;

  /// Create from JSON
  factory StatsConfiance.fromJson(Map<String, Object?> json) =>
      _$StatsConfianceFromJson(json);
}

/// Dominant category data
@freezed
abstract class CategorieDominante with _$CategorieDominante {
  /// Constructor
  factory CategorieDominante({
    required String nom,
    required double proportion,
  }) = _CategorieDominante;

  /// Create from JSON
  factory CategorieDominante.fromJson(Map<String, Object?> json) =>
      _$CategorieDominanteFromJson(json);
}
