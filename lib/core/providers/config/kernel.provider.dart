import 'package:flutter/foundation.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:starter_kit/core/providers/config/appconfig.provider.dart';
import 'package:starter_kit/core/providers/core/services/user.service.provider.dart';
import 'package:starter_kit/core/providers/core/usecases/get_auth.use_case.provider.dart';
import 'package:starter_kit/core/providers/data/clients/dio_client.provider.dart';
import 'package:starter_kit/core/providers/data/datasources/local/authentication.local.data_source.provider.dart';
import 'package:starter_kit/core/providers/data/repositories/authentication.repository.provider.dart';
import 'package:starter_kit/core/providers/data/storages/authentication.secure_storage.provider.dart';
import 'package:starter_kit/core/providers/foundation/services/user.service.dart';
import 'package:starter_kit/data/clients/dio.client.dart';
import 'package:starter_kit/data/clients/interceptors/token.interceptor.dart';
import 'package:starter_kit/foundation/config/app_config.dart';

part 'kernel.provider.g.dart';

/// Kernel provider
@Riverpod(keepAlive: true)
Future<void> kernel(Ref ref) async {
  debugPrint('[KernelProvider] Starting initialization');
  final AppConfig _ = ref.watch(appConfigProvider);

  final DioClient dioClient = await ref.watch(dioClientProvider.future);
  TokenInterceptor(
    dioClient: dioClient,
    getAuthUseCase: await ref.watch(getAuthUseCaseProvider.future),
  );

  final UserService userService = await ref.watch(userServiceProvider.future);
  await userService.loadLocalUser();

  // try {
  //   // Initialize RevenueCat for in-app purchases
  //   final PurchaseService purchaseService =
  // ref.read(purchaseServiceProvider);
  //   await purchaseService.initialize();
  // } on Exception catch (e) {
  //   debugPrint('RevenueCat initialization error: $e');
  // }

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
