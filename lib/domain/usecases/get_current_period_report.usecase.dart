import 'package:welly/data/datasources/local/ai_analysis_report.local_data_source.dart';
import 'package:welly/data/model/local/ai_analysis_report.local_model.dart';
import 'package:welly/domain/entities/ai_analysis.entity.dart';
import 'package:welly/foundation/interfaces/future.usecases.dart';

/// Use case to get current period AI analysis report
class GetCurrentPeriodReportUseCase
    extends FutureUseCaseWithParams<AIAnalysisEntity?, DateTime?> {
  /// Constructor
  GetCurrentPeriodReportUseCase({
    required AIAnalysisReportLocalDataSource localDataSource,
  }) : _localDataSource = localDataSource;

  /// Local data source
  final AIAnalysisReportLocalDataSource _localDataSource;

  @override
  Future<AIAnalysisEntity?> invoke(DateTime? params) async {
    final AIAnalysisReportLocalModel? localModel = await _localDataSource
        .getCurrentPeriodReport(referenceDate: params);

    return localModel?.toEntity();
  }
}
