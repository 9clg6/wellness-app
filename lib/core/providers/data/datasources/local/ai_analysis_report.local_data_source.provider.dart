import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sembast/sembast.dart';
import 'package:welly/core/providers/data/sembast.provider.dart';
import 'package:welly/data/datasources/local/ai_analysis_report.local_data_source.dart';
import 'package:welly/data/datasources/local/impl/ai_analysis_report.local_data_source.impl.dart';

part 'ai_analysis_report.local_data_source.provider.g.dart';

/// Provider for AIAnalysisReportLocalDataSource
@riverpod
Future<AIAnalysisReportLocalDataSource> aiAnalysisReportLocalDataSource(
  Ref ref,
) async {
  final Database database = await ref.watch(sembastDatabaseProvider.future);

  return AIAnalysisReportLocalDataSourceImpl(database: database);
}
