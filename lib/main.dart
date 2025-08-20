import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:starter_kit/presentation/app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

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
