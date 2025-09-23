import 'package:sembast/sembast.dart';
import 'package:welly/data/datasources/local/ai_analysis_report.local_data_source.dart';
import 'package:welly/data/model/local/ai_analysis_report.local_model.dart';

/// Implementation of AI analysis report local data source using Sembast
final class AIAnalysisReportLocalDataSourceImpl
    implements AIAnalysisReportLocalDataSource {
  /// Constructor
  AIAnalysisReportLocalDataSourceImpl({required Database database})
    : _database = database;

  /// Database instance
  final Database _database;

  /// Store name for AI analysis reports
  static const String _storeName = 'ai_analysis_reports';

  /// Store reference
  final StoreRef<String, Map<String, Object?>> _store = stringMapStoreFactory
      .store(_storeName);

  @override
  Future<void> saveReport(AIAnalysisReportLocalModel report) async {
    await _store.record(report.id).put(_database, report.toJson());
  }

  @override
  Future<AIAnalysisReportLocalModel?> getLatestReport() async {
    final List<RecordSnapshot<String, Map<String, Object?>>> records =
        await _store.find(
          _database,
          finder: Finder(
            sortOrders: <SortOrder<String>>[
              SortOrder<String>('createdAt', false),
            ],
            limit: 1,
          ),
        );
    if (records.isEmpty) {
      return null;
    }

    final AIAnalysisReportLocalModel model =
        AIAnalysisReportLocalModel.fromJson(records.first.value);
    return model;
  }

  @override
  Future<List<AIAnalysisReportLocalModel>> getAllReports() async {
    final List<RecordSnapshot<String, Map<String, Object?>>> records =
        await _store.find(_database);

    return records
        .map(
          (RecordSnapshot<String, Map<String, Object?>> record) =>
              AIAnalysisReportLocalModel.fromJson(record.value),
        )
        .toList();
  }

  @override
  Future<AIAnalysisReportLocalModel?> getCurrentPeriodReport({
    DateTime? referenceDate,
  }) async {
    final DateTime refDate = referenceDate ?? DateTime.now();
    final DateTime startDate = refDate.subtract(const Duration(days: 6));
    final DateTime endDate = refDate;

    final List<AIAnalysisReportLocalModel> overlapping =
        await getReportsForDateRange(startDate: startDate, endDate: endDate);

    if (overlapping.isEmpty) {
      return null;
    }

    overlapping.sort((
      AIAnalysisReportLocalModel a,
      AIAnalysisReportLocalModel b,
    ) {
      final DateTime aCreated = DateTime.parse(a.createdAt);
      final DateTime bCreated = DateTime.parse(b.createdAt);
      return bCreated.compareTo(aCreated);
    });

    final AIAnalysisReportLocalModel chosen = overlapping.first;
    return chosen;
  }

  @override
  Future<List<AIAnalysisReportLocalModel>> getReportsForDateRange({
    required DateTime startDate,
    required DateTime endDate,
  }) async {
    final List<AIAnalysisReportLocalModel> allReports = await getAllReports();

    final List<AIAnalysisReportLocalModel> filtered = allReports.where((
      AIAnalysisReportLocalModel report,
    ) {
      final DateTime reportStart = DateTime.parse(report.startDate);
      final DateTime reportEnd = DateTime.parse(report.endDate);

      // Check if report overlaps with the requested range
      return (reportStart.isBefore(endDate) ||
              reportStart.isAtSameMomentAs(endDate)) &&
          (reportEnd.isAfter(startDate) ||
              reportEnd.isAtSameMomentAs(startDate));
    }).toList();

    return filtered;
  }

  @override
  Future<bool> hasCurrentPeriodReport({DateTime? referenceDate}) async {
    final AIAnalysisReportLocalModel? report = await getCurrentPeriodReport(
      referenceDate: referenceDate,
    );
    final bool exists = report != null;
    return exists;
  }

  @override
  Future<void> deleteReportsForDateRange({
    required DateTime startDate,
    required DateTime endDate,
  }) async {
    final String startIso = startDate.toIso8601String();
    final String endIso = endDate.toIso8601String();

    final Finder finder = Finder(
      filter: Filter.and(<Filter>[
        // report.startDate <= endDate
        Filter.lessThanOrEquals('startDate', endIso),
        // AND report.endDate >= startDate
        Filter.greaterThanOrEquals('endDate', startIso),
      ]),
    );

    await _store.delete(_database, finder: finder);
  }

  @override
  Future<void> clearAllReports() async {
    await _store.delete(_database);
  }
}
