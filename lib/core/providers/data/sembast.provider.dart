import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sembast/sembast_io.dart';

part 'sembast.provider.g.dart';

/// Provider for Sembast database
@Riverpod(keepAlive: true)
Future<Database> sembastDatabase(Ref ref) async {
  // Get the application documents directory
  final String appDocDir = (await getApplicationDocumentsDirectory()).path;

  // Create the database path
  final String dbPath = join(appDocDir, 'happen_actions.db');

  // Open the database
  final Database database = await databaseFactoryIo.openDatabase(dbPath);

  return database;
}
