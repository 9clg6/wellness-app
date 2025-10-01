import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:welly/presentation/app.dart';

Future<void> main() async {
  final WidgetsBinding widgetsBinding =
      WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  if (!kIsWeb) {
    FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  }

  const Locale fr = Locale('fr');
  const Locale en = Locale('en');

  runApp(
    ProviderScope(
      child: EasyLocalization(
        supportedLocales: const <Locale>[fr, en],
        fallbackLocale: en,
        path: 'assets/translations',
        child: const RootAppWidget(),
      ),
    ),
  );
}
