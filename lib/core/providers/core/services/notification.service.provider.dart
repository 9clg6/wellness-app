import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:welly/core/providers/data/storages/user_preferences.storage.provider.dart';
import 'package:welly/core/providers/foundation/services/notification.service.dart';

part 'notification.service.provider.g.dart';

/// Provider for NotificationService
@riverpod
Future<NotificationService> notificationService(Ref ref) async {
  final NotificationService service = NotificationService();
  final bool enabled = await ref
      .read(userPreferencesStorageProvider)
      .getNotificationsEnabled();
  await service.initialize(pushEnabled: enabled);
  return service;
}
