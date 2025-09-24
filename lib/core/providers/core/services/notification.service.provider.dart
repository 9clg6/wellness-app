import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:welly/core/providers/foundation/services/notification.service.dart';

part 'notification.service.provider.g.dart';

/// Provider for NotificationService
@riverpod
Future<NotificationService> notificationService(Ref ref) async {
  final NotificationService service = NotificationService();
  await service.initialize();
  return service;
}
