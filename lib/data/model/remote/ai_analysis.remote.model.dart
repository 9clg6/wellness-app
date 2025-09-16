import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:starter_kit/domain/entities/ai_analysis.entity.dart';

part 'ai_analysis.remote.model.freezed.dart';
part 'ai_analysis.remote.model.g.dart';

/// Model representing AI analysis results from API
@freezed
abstract class AIAnalysisModel with _$AIAnalysisModel {
  /// AI Analysis Model constructor
  factory AIAnalysisModel({
    @JsonKey(name: 'stats_confiance')
    required StatsConfianceModel statsConfiance,
    @JsonKey(name: 'categorie_dominante')
    required CategorieDominanteModel categorieDominante,
    @JsonKey(name: 'humeur_generale') required String humeurGenerale,
    @JsonKey(name: 'moment_marquant') required String momentMarquant,
    @JsonKey(name: 'progression_semaine') required String progressionSemaine,
    @JsonKey(name: 'analyse_globale') required String analyseGlobale,
    @JsonKey(name: 'suggestions') required List<String> suggestions,
  }) = _AIAnalysisModel;

  /// fromJson
  factory AIAnalysisModel.fromJson(Map<String, dynamic> json) =>
      _$AIAnalysisModelFromJson(json);
}

/// Model representing confidence statistics from API
@freezed
abstract class StatsConfianceModel with _$StatsConfianceModel {
  /// Constructor
  factory StatsConfianceModel({
    @JsonKey(name: 'jours_remplis') required int joursRemplis,
    @JsonKey(name: 'streak') required int streak,
    @JsonKey(name: 'pourcentage_completion')
    required double pourcentageCompletion,
  }) = _StatsConfianceModel;

  /// fromJson
  factory StatsConfianceModel.fromJson(Map<String, dynamic> json) =>
      _$StatsConfianceModelFromJson(json);
}

/// Model representing dominant category from API
@freezed
abstract class CategorieDominanteModel with _$CategorieDominanteModel {
  /// Constructor
  factory CategorieDominanteModel({
    @JsonKey(name: 'nom') required String nom,
    @JsonKey(name: 'proportion') required double proportion,
  }) = _CategorieDominanteModel;

  /// fromJson
  factory CategorieDominanteModel.fromJson(Map<String, dynamic> json) =>
      _$CategorieDominanteModelFromJson(json);
}

/// Extension for AIAnalysisModel utilities
extension AIAnalysisModelExtension on AIAnalysisModel {
  /// toEntity
  AIAnalysisEntity toEntity() => AIAnalysisEntity(
    statsConfiance: statsConfiance.toEntity(),
    categorieDominante: categorieDominante.toEntity(),
    humeurGenerale: humeurGenerale,
    momentMarquant: momentMarquant,
    progressionSemaine: progressionSemaine,
    analyseGlobale: analyseGlobale,
    suggestions: suggestions,
  );
}

/// Extension for StatsConfianceModel utilities
extension StatsConfianceModelExtension on StatsConfianceModel {
  /// toEntity
  StatsConfiance toEntity() => StatsConfiance(
    joursRemplis: joursRemplis,
    streak: streak,
    pourcentageCompletion: pourcentageCompletion,
  );
}

/// Extension for CategorieDominanteModel utilities
extension CategorieDominanteModelExtension on CategorieDominanteModel {
  /// toEntity
  CategorieDominante toEntity() =>
      CategorieDominante(nom: nom, proportion: proportion);
}
