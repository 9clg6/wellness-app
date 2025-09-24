import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:welly/firebase_options.dart';
import 'package:welly/presentation/app.dart';

Future<void> main() async {
  final WidgetsBinding widgetsBinding =
      WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  // Initialize Firebase
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  // Register background message handler
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  await FirebaseMessaging.instance.setAutoInitEnabled(true);

  FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;

  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  const Locale fr = Locale('fr');
  const Locale en = Locale('en');

  runApp(
    ProviderScope(
      child: EasyLocalization(
        supportedLocales: const <Locale>[fr, en],
        fallbackLocale: en,
        path: 'assets/translations',
        // assetLoader: const CodegenLoader(),
        child: const RootAppWidget(),
      ),
    ),
  );
}

/// Background message handler for Firebase Messaging
@pragma('vm:entry-point')
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  debugPrint('[Main] Background message received: ${message.messageId}');
  debugPrint('[Main] Message data: ${message.data}');
  debugPrint('[Main] Message notification: ${message.notification?.title}');
}
