import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:welly/core/providers/foundation/services/dialog.service.dart';
import 'package:welly/core/providers/presentation/router.provider.dart';
import 'package:welly/foundation/routing/app_router.dart';

part 'dialog.service.provider.g.dart';

/// Dialog service provider
@Riverpod(keepAlive: true)
DialogService dialogService(Ref ref) {
  final AppRouter appRouter = ref.read(routerProvider);
  return DialogService(appRouter: appRouter);
}
