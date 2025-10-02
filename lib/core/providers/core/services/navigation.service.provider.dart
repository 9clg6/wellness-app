import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:welly/core/providers/foundation/services/navigation.service.dart';
import 'package:welly/core/providers/presentation/router.provider.dart';

part 'navigation.service.provider.g.dart';

/// Navigation service provider
@Riverpod(keepAlive: true)
NavigationService navigationService(Ref ref) {
  return NavigationService(appRouter: ref.read(routerProvider));
}
