import 'package:freezed_annotation/freezed_annotation.dart';

part 'ai_analysis.entity.freezed.dart';

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
  }) = _AIAnalysisEntity;
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
}

/// Dominant category data
@freezed
abstract class CategorieDominante with _$CategorieDominante {
  /// Constructor
  factory CategorieDominante({
    required String nom,
    required double proportion,
  }) = _CategorieDominante;
}
