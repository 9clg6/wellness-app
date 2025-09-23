import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:welly/data/storages/user_preferences.storage.dart';

part 'user_preferences.storage.provider.g.dart';

/// User preferences storage provider
@riverpod
UserPreferencesStorage userPreferencesStorage(Ref ref) {
  return UserPreferencesStorage();
}
