import 'package:flutter/foundation.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:welly/core/providers/config/appconfig.provider.dart';
import 'package:welly/core/providers/core/services/happen_action.service.provider.dart';
import 'package:welly/core/providers/core/services/notification.service.provider.dart';
import 'package:welly/core/providers/core/services/purchase.service.provider.dart';
import 'package:welly/core/providers/core/services/user.service.provider.dart';
import 'package:welly/core/providers/data/clients/dio_client.provider.dart';
import 'package:welly/core/providers/data/datasources/local/authentication.local.data_source.provider.dart';
import 'package:welly/core/providers/data/repositories/authentication.repository.provider.dart';
import 'package:welly/core/providers/data/storages/authentication.secure_storage.provider.dart';
import 'package:welly/core/providers/foundation/services/happen_action.service.dart';
import 'package:welly/core/providers/foundation/services/notification.service.dart';
import 'package:welly/core/providers/foundation/services/purchase.service.dart';
import 'package:welly/core/providers/foundation/services/user.service.dart';
import 'package:welly/data/clients/dio.client.dart';
import 'package:welly/data/clients/interceptors/token.interceptor.dart';
import 'package:welly/foundation/config/app_config.dart';

part 'kernel.provider.g.dart';

/// Kernel provider
@Riverpod(keepAlive: true)
Future<void> kernel(Ref ref) async {
  debugPrint('[KernelProvider] Starting initialization');
  final AppConfig _ = ref.watch(appConfigProvider);

  final DioClient dioClient = await ref.watch(dioClientProvider.future);
  TokenInterceptor(dioClient: dioClient);

  try {
    final UserService userService = await ref.watch(userServiceProvider.future);
    await userService.loadLocalUser();
  } on Exception catch (e) {
    debugPrint('User service initialization error: $e');
  }

  try {
    final HappenActionService happenActionService = await ref.watch(
      happenActionServiceProvider.future,
    );
    await happenActionService.init();
  } on Exception catch (e) {
    debugPrint('Happen action service initialization error: $e');
  }

  try {
    // Initialize RevenueCat for in-app purchases
    final PurchaseService purchaseService = ref.watch(purchaseServiceProvider);
    await purchaseService.initialize();
  } on Exception catch (e) {
    debugPrint('RevenueCat initialization error: $e');
  }

  try {
    // Initialize notification service
    final NotificationService notificationService = await ref.watch(
      notificationServiceProvider.future,
    );
    debugPrint('Notification service initialized successfully');

    // Request notification permissions immediately after initialization
    await _requestNotificationPermissions(notificationService);
  } on Exception catch (e) {
    debugPrint('Notification service initialization error: $e');
  }

  ref.onDispose(() {
    ref
      ..invalidate(appConfigProvider)
      ..invalidate(authenticationSecureStorageProvider)
      ..invalidate(authenticationLocalDataSourceProvider)
      ..invalidate(authenticationRepositoryProvider)
      ..invalidate(authenticationSecureStorageProvider)
      ..invalidate(authenticationSecureStorageProvider);
  });

  FlutterNativeSplash.remove();
}

/// Request notification permissions with user-friendly approach
Future<void> _requestNotificationPermissions(
  NotificationService notificationService,
) async {
  try {
    debugPrint('[KernelProvider] Checking notification permissions...');

    // Wait a bit for the app to be fully loaded
    await Future<void>.delayed(const Duration(seconds: 3));

    // Request permissions with the new method
    final bool granted = await notificationService
        .requestPermissionsWithDelay();

    if (granted) {
      debugPrint('[KernelProvider] ✅ Notification permissions granted!');
    } else {
      debugPrint('[KernelProvider] ⚠️ Notification permissions denied');
      debugPrint('[KernelProvider] User can enable them later in settings');
    }
  } on Exception catch (e) {
    debugPrint(
      '[KernelProvider] Error requesting notification permissions: $e',
    );
  }
}
