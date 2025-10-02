import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:welly/core/providers/core/services/analytics.service.provider.dart';
import 'package:welly/core/providers/foundation/services/analytics.service.dart';
import 'package:welly/core/providers/foundation/services/tracking.service.dart';

part 'tracking.service.provider.g.dart';

/// Provider for the [TrackingService]
@riverpod
TrackingService trackingService(Ref ref) {
  final AnalyticsService analyticsService = ref.watch(analyticsServiceProvider);
  return TrackingService(analyticsService);
}
