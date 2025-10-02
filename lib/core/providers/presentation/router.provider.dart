import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:welly/foundation/routing/app_router.dart';

part 'router.provider.g.dart';

/// App router provider
@Riverpod(keepAlive: true)
AppRouter router(Ref ref) {
  return AppRouter();
}
