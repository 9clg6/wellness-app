import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sembast/sembast.dart';
import 'package:welly/core/providers/data/sembast.provider.dart';
import 'package:welly/data/datasources/local/happen_action.local_data_source.dart';
import 'package:welly/data/datasources/local/impl/happen_action.local_data_source.impl.dart';

part 'happen_action.local_data_source.provider.g.dart';

/// Provider for HappenActionLocalDataSource
@riverpod
Future<HappenActionLocalDataSource> happenActionLocalDataSource(Ref ref) async {
  final Database database = await ref.watch(sembastDatabaseProvider.future);

  return HappenActionLocalDataSourceImpl(database: database);
}
