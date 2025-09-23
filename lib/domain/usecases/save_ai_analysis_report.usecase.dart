import 'package:flutter/foundation.dart';
import 'package:welly/data/datasources/local/ai_analysis_report.local_data_source.dart';
import 'package:welly/data/model/local/ai_analysis_report.local_model.dart';
import 'package:welly/domain/entities/ai_analysis.entity.dart';
import 'package:welly/foundation/interfaces/future.usecases.dart';

/// Use case to save AI analysis report
class SaveAIAnalysisReportUseCase
    extends FutureUseCaseWithParams<void, AIAnalysisEntity> {
  /// Constructor
  SaveAIAnalysisReportUseCase({
    required AIAnalysisReportLocalDataSource localDataSource,
  }) : _localDataSource = localDataSource;

  /// Local data source
  final AIAnalysisReportLocalDataSource _localDataSource;

  @override
  Future<void> invoke(AIAnalysisEntity params) async {
    final AIAnalysisReportLocalModel localModel =
        AIAnalysisReportLocalModel.fromEntity(params);

    debugPrint(
      '[SaveAIAnalysisReportUseCase] Saving AI analysis report',
    );
    await _localDataSource.saveReport(localModel);
  }
}
