import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:welly/core/providers/foundation/services/analytics.service.dart';

part 'analytics.service.provider.g.dart';

/// Analytics service provider
@riverpod
AnalyticsService analyticsService(Ref ref) {
  return AnalyticsService(FirebaseAnalytics.instance);
}
