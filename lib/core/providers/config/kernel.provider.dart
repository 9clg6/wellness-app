import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:welly/core/providers/config/appconfig.provider.dart';
import 'package:welly/core/providers/core/services/happen_action.service.provider.dart';
import 'package:welly/core/providers/core/services/purchase.service.provider.dart';
import 'package:welly/core/providers/core/services/user.service.provider.dart';
import 'package:welly/core/providers/data/clients/dio_client.provider.dart';
import 'package:welly/core/providers/data/datasources/local/authentication.local.data_source.provider.dart';
import 'package:welly/core/providers/data/repositories/authentication.repository.provider.dart';
import 'package:welly/core/providers/data/storages/authentication.secure_storage.provider.dart';
import 'package:welly/core/providers/foundation/services/happen_action.service.dart';
import 'package:welly/core/providers/foundation/services/purchase.service.dart';
import 'package:welly/core/providers/foundation/services/user.service.dart';
import 'package:welly/data/clients/dio.client.dart';
import 'package:welly/data/clients/interceptors/token.interceptor.dart';
import 'package:welly/firebase_options.dart';
import 'package:welly/foundation/config/app_config.dart';

part 'kernel.provider.g.dart';

/// Kernel provider
@Riverpod(keepAlive: true)
Future<void> kernel(Ref ref) async {
  debugPrint('[KernelProvider] Starting initialization');
  final AppConfig _ = ref.watch(appConfigProvider);

  if (!kIsWeb) {

    // Initialize Firebase
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );

    // Register background message handler
    FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
    await FirebaseMessaging.instance.setAutoInitEnabled(true);

    FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;

    final DioClient dioClient = await ref.watch(dioClientProvider.future);
    TokenInterceptor(dioClient: dioClient);

    try {
      final UserService userService = await ref.watch(
        userServiceProvider.future,
      );
      await userService.loadLocalUser();
    } on Exception catch (e, s) {
      debugPrint('User service initialization error: $e');
      unawaited(FirebaseCrashlytics.instance.recordError(e, s));
    }

    try {
      final HappenActionService happenActionService = await ref.watch(
        happenActionServiceProvider.future,
      );
      await happenActionService.init();
    } on Exception catch (e, s) {
      debugPrint('Happen action service initialization error: $e');
      unawaited(FirebaseCrashlytics.instance.recordError(e, s));
    }

    try {
      // Initialize RevenueCat for in-app purchases
      final PurchaseService purchaseService = ref.watch(
        purchaseServiceProvider,
      );
      await purchaseService.initialize();
    } on Exception catch (e, s) {
      debugPrint('RevenueCat initialization error: $e');
      unawaited(FirebaseCrashlytics.instance.recordError(e, s));
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
}

/// Background message handler for Firebase Messaging
@pragma('vm:entry-point')
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  debugPrint('[Main] Background message received: ${message.messageId}');
  debugPrint('[Main] Message data: ${message.data}');
  debugPrint('[Main] Message notification: ${message.notification?.title}');
}
