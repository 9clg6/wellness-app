import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:welly/domain/entities/ai_analysis.entity.dart';

part 'ai_analysis_report.local_model.freezed.dart';
part 'ai_analysis_report.local_model.g.dart';

/// Json converters to force deep toJson without class-level annotation
class StatsConfianceConverter
    implements JsonConverter<StatsConfiance, Map<String, Object?>> {
  /// Constructor
  const StatsConfianceConverter();

  @override
  StatsConfiance fromJson(Map<String, Object?> json) =>
      StatsConfiance.fromJson(json);

  @override
  Map<String, Object?> toJson(StatsConfiance object) => object.toJson();
}

/// Json converters to force deep toJson without class-level annotation
class CategorieDominanteConverter
    implements JsonConverter<CategorieDominante, Map<String, Object?>> {
  ///
  const CategorieDominanteConverter();

  @override
  CategorieDominante fromJson(Map<String, Object?> json) =>
      CategorieDominante.fromJson(json);

  @override
  Map<String, Object?> toJson(CategorieDominante object) => object.toJson();
}

/// Local model for AI analysis report (JSON-serializable)
@freezed
abstract class AIAnalysisReportLocalModel with _$AIAnalysisReportLocalModel {
  /// Constructor
  const factory AIAnalysisReportLocalModel({
    @StatsConfianceConverter() required StatsConfiance statsConfiance,
    @CategorieDominanteConverter()
    required CategorieDominante categorieDominante,
    required String humeurGenerale,
    required String momentMarquant,
    required String progressionSemaine,
    required String analyseGlobale,
    required List<String> suggestions,
    required String id,
    required String startDate,
    required String endDate,
    required String createdAt,
  }) = _AIAnalysisReportLocalModel;

  /// Create from entity (convert nested Freezed to JSON maps)
  factory AIAnalysisReportLocalModel.fromEntity(AIAnalysisEntity entity) {
    return AIAnalysisReportLocalModel(
      statsConfiance: entity.statsConfiance,
      categorieDominante: entity.categorieDominante,
      humeurGenerale: entity.humeurGenerale,
      momentMarquant: entity.momentMarquant,
      progressionSemaine: entity.progressionSemaine,
      analyseGlobale: entity.analyseGlobale,
      suggestions: entity.suggestions,
      id: entity.id!,
      startDate: entity.startDate!.toIso8601String(),
      endDate: entity.endDate!.toIso8601String(),
      createdAt: entity.createdAt!.toIso8601String(),
    );
  }

  /// JSON
  factory AIAnalysisReportLocalModel.fromJson(Map<String, Object?> json) =>
      _$AIAnalysisReportLocalModelFromJson(json);
}

/// Mapping back to domain entity
extension AIAnalysisReportLocalModelX on AIAnalysisReportLocalModel {
  /// toEntity
  AIAnalysisEntity toEntity() {
    return AIAnalysisEntity(
      statsConfiance: statsConfiance,
      categorieDominante: categorieDominante,
      humeurGenerale: humeurGenerale,
      momentMarquant: momentMarquant,
      progressionSemaine: progressionSemaine,
      analyseGlobale: analyseGlobale,
      suggestions: suggestions,
      id: id,
      startDate: DateTime.parse(startDate),
      endDate: DateTime.parse(endDate),
      createdAt: DateTime.parse(createdAt),
    );
  }
}
