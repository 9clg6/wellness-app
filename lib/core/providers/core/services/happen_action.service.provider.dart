import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:starter_kit/core/providers/foundation/services/happen_action.service.dart';

part 'happen_action.service.provider.g.dart';

/// Provider pour HappenActionService
@Riverpod(keepAlive: true)
HappenActionService happenActionService(Ref ref) {
  return HappenActionService();
}
