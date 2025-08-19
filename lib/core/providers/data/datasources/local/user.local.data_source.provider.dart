import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:starter_kit/core/providers/data/storages/user_preferences.storage.provider.dart';
import 'package:starter_kit/data/datasources/local/impl/user.local.data_source.impl.dart';
import 'package:starter_kit/data/datasources/local/user.local.data_source.dart';
import 'package:starter_kit/data/storages/user_preferences.storage.dart';

part 'user.local.data_source.provider.g.dart';

/// User local data source provider
@riverpod
UserLocalDataSource userLocalDataSource(Ref ref) {
  final UserPreferencesStorage userPreferencesStorage = ref.watch(
    userPreferencesStorageProvider,
  );
  return UserLocalDatasourceImpl(userPreferences: userPreferencesStorage);
}
