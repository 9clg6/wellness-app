import 'package:welly/data/datasources/local/ai_analysis_report.local_data_source.dart';
import 'package:welly/foundation/interfaces/future.usecases.dart';

/// Use case to check if current period report exists
class HasCurrentPeriodReportUseCase
    extends FutureUseCaseWithParams<bool, DateTime?> {
  /// Constructor
  HasCurrentPeriodReportUseCase({
    required AIAnalysisReportLocalDataSource localDataSource,
  }) : _localDataSource = localDataSource;

  /// Local data source
  final AIAnalysisReportLocalDataSource _localDataSource;

  @override
  Future<bool> invoke(DateTime? params) async {
    return _localDataSource.hasCurrentPeriodReport(referenceDate: params);
  }
}
