import 'package:firebase_analytics/firebase_analytics.dart';

/// Service for analytics operations
class AnalyticsService {
  /// Constructor
  AnalyticsService(this._firebaseAnalytics);

  final FirebaseAnalytics _firebaseAnalytics;

  /// Log an event
  Future<void> logEvent(String name, {Map<String, Object>? parameters}) async {
    await _firebaseAnalytics.logEvent(name: name, parameters: parameters);
  }

  /// Set the user ID
  Future<void> setUserId(String id) async {
    await _firebaseAnalytics.setUserId(id: id);
  }

  /// Set a user property
  Future<void> setUserProperty({
    required String name,
    required String? value,
  }) async {
    await _firebaseAnalytics.setUserProperty(name: name, value: value);
  }
}
