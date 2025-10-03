import 'package:welly/core/providers/foundation/services/analytics.service.dart';
import 'package:welly/core/providers/foundation/services/analytics_events.dart';

/// Enhanced analytics service with predefined tracking methods
class TrackingService {
  /// Constructor
  TrackingService(this._analyticsService);

  final AnalyticsService _analyticsService;

  /// Track any analytics event
  Future<void> track(
    String eventName, {
    Map<String, Object>? parameters,
  }) async {
    await _analyticsService.logEvent(eventName, parameters: parameters);
  }

  /// Convenience methods for common events
  Future<void> trackLoginGooglePressed() async {
    await track(AnalyticsEvents.loginGooglePressed);
  }

  /// Track login apple pressed
  Future<void> trackLoginApplePressed() async {
    await track(AnalyticsEvents.loginApplePressed);
  }

  /// Track login google success
  Future<void> trackLoginGoogleSuccess({String? userId}) async {
    await track(
      AnalyticsEvents.loginGoogleSuccess,
      parameters: userId != null ? <String, Object>{'user_id': userId} : null,
    );
  }

  /// Track login apple success
  Future<void> trackLoginAppleSuccess({String? userId}) async {
    await track(
      AnalyticsEvents.loginAppleSuccess,
      parameters: userId != null ? <String, Object>{'user_id': userId} : null,
    );
  }

  /// Track login google error
  Future<void> trackLoginGoogleError({String? error}) async {
    await track(
      AnalyticsEvents.loginGoogleError,
      parameters: error != null ? <String, Object>{'error': error} : null,
    );
  }

  /// Track login apple error
  Future<void> trackLoginAppleError({String? error}) async {
    await track(
      AnalyticsEvents.loginAppleError,
      parameters: error != null ? <String, Object>{'error': error} : null,
    );
  }

  /// Track skip auth pressed
  Future<void> trackSkipAuthPressed() async {
    await track(AnalyticsEvents.skipAuthPressed);
  }

  /// Track network error with context
  Future<void> trackNetworkError({
    required String operation,
    String? errorCode,
    int? statusCode,
  }) async {
    await track(
      AnalyticsEvents.networkError,
      parameters: <String, Object>{
        'operation': operation,
        if (errorCode != null) 'error_code': errorCode,
        if (statusCode != null) 'status_code': statusCode,
      },
    );
  }

  /// Track payment error with context
  Future<void> trackPaymentError({
    required String errorType,
    String? packageId,
    String? errorCode,
  }) async {
    await track(
      AnalyticsEvents.paymentError,
      parameters: <String, Object>{
        'error_type': errorType,
        if (packageId != null) 'package_id': packageId,
        if (errorCode != null) 'error_code': errorCode,
      },
    );
  }

  /// Track system error with context
  Future<void> trackSystemError({
    required String component,
    String? errorCode,
  }) async {
    await track(
      AnalyticsEvents.systemError,
      parameters: <String, Object>{
        'component': component,
        if (errorCode != null) 'error_code': errorCode,
      },
    );
  }

  // Onboarding tracking
  /// Track onboarding started
  Future<void> trackOnboardingStarted() async {
    await track(AnalyticsEvents.onboardingStarted);
  }

  /// Track onboarding step completed
  Future<void> trackOnboardingStepCompleted({
    required String stepName,
    required int stepNumber,
  }) async {
    await track(
      AnalyticsEvents.onboardingStepCompleted,
      parameters: <String, Object>{
        'step_name': stepName,
        'step_number': stepNumber,
      },
    );
  }

  /// Track onboarding completed
  Future<void> trackOnboardingCompleted() async {
    await track(AnalyticsEvents.onboardingCompleted);
  }

  /// Track onboarding skipped
  Future<void> trackOnboardingSkipped() async {
    await track(AnalyticsEvents.onboardingSkipped);
  }

  // Quiz tracking
  /// Track quiz started
  Future<void> trackQuizStarted() async {
    await track(AnalyticsEvents.quizStarted);
  }

  /// Track quiz question answered
  Future<void> trackQuizQuestionAnswered({
    required String questionId,
    required String answer,
    required int questionNumber,
  }) async {
    await track(
      AnalyticsEvents.quizQuestionAnswered,
      parameters: <String, Object>{
        'question_id': questionId,
        'answer': answer,
        'question_number': questionNumber,
      },
    );
  }

  /// Track quiz completed
  Future<void> trackQuizCompleted() async {
    await track(AnalyticsEvents.quizCompleted);
  }

  // Paywall tracking
  /// Track paywall shown
  Future<void> trackPaywallShown() async {
    await track(AnalyticsEvents.paywallShown);
  }

  /// Track paywall purchase started
  Future<void> trackPaywallPurchaseStarted({String? packageId}) async {
    await track(
      AnalyticsEvents.paywallPurchaseStarted,
      parameters: packageId != null
          ? <String, Object>{'package_id': packageId}
          : null,
    );
  }

  /// Track paywall purchase completed
  Future<void> trackPaywallPurchaseCompleted({String? packageId}) async {
    await track(
      AnalyticsEvents.paywallPurchaseCompleted,
      parameters: packageId != null
          ? <String, Object>{'package_id': packageId}
          : null,
    );
  }

  /// Track paywall purchase cancelled
  Future<void> trackPaywallPurchaseCancelled() async {
    await track(AnalyticsEvents.paywallPurchaseCancelled);
  }

  /// Track paywall purchase error
  Future<void> trackPaywallPurchaseError({String? error}) async {
    await track(
      AnalyticsEvents.paywallPurchaseError,
      parameters: error != null ? <String, Object>{'error': error} : null,
    );
  }

  /// Track paywall dismissed
  Future<void> trackPaywallDismissed() async {
    await track(AnalyticsEvents.paywallDismissed);
  }

  // Notification tracking
  /// Track notification permission requested
  Future<void> trackNotificationPermissionRequested() async {
    await track(AnalyticsEvents.notificationPermissionRequested);
  }

  /// Track notification permission granted
  Future<void> trackNotificationPermissionGranted() async {
    await track(AnalyticsEvents.notificationPermissionGranted);
  }

  /// Track notification permission denied
  Future<void> trackNotificationPermissionDenied() async {
    await track(AnalyticsEvents.notificationPermissionDenied);
  }

  // Home page tracking
  /// Track home page viewed
  Future<void> trackHomePageViewed() async {
    await track(AnalyticsEvents.homePageViewed);
  }

  /// Track real home page viewed
  Future<void> trackRealHomePageViewed() async {
    await track(AnalyticsEvents.realHomePageViewed);
  }

  /// Track start button pressed
  Future<void> trackStartButtonPressed() async {
    await track(AnalyticsEvents.startButtonPressed);
  }

  /// Track review button pressed
  Future<void> trackReviewButtonPressed() async {
    await track(AnalyticsEvents.reviewButtonPressed);
  }

  /// Track ai analyze button pressed
  Future<void> trackAiAnalyzeButtonPressed() async {
    await track(AnalyticsEvents.aiAnalyzeButtonPressed);
  }

  // Navigation tracking
  /// Track navigation to home
  Future<void> trackNavigationToHome() async {
    await track(AnalyticsEvents.navigationToHome);
  }

  /// Track navigation to review
  Future<void> trackNavigationToReview() async {
    await track(AnalyticsEvents.navigationToReview);
  }

  /// Track navigation to ai analyze
  Future<void> trackNavigationToAiAnalyze() async {
    await track(AnalyticsEvents.navigationToAiAnalyze);
  }

  // App lifecycle tracking
  /// Track app opened
  Future<void> trackAppOpened() async {
    await track(AnalyticsEvents.appOpened);
  }

  /// Track app backgrounded
  Future<void> trackAppBackgrounded() async {
    await track(AnalyticsEvents.appBackgrounded);
  }

  /// Track app foregrounded
  Future<void> trackAppForegrounded() async {
    await track(AnalyticsEvents.appForegrounded);
  }

  // Generic tracking method for custom events
  /// Track event
  Future<void> trackEvent(
    String eventName, {
    Map<String, Object>? parameters,
  }) async {
    await _analyticsService.logEvent(eventName, parameters: parameters);
  }

  // Settings specific tracking
  /// Track settings notifications changed
  Future<void> trackSettingsNotificationsChanged({
    required bool enabled,
  }) async {
    await track(
      AnalyticsEvents.settingsNotificationsChanged,
      parameters: <String, Object>{'enabled': enabled},
    );
  }

  /// Track settings logout confirmed
  Future<void> trackSettingsLogoutConfirmed() async {
    await track(AnalyticsEvents.settingsLogoutConfirmed);
  }

  /// Track settings privacy opened
  Future<void> trackSettingsPrivacyOpened() async {
    await track(AnalyticsEvents.settingsPrivacyOpened);
  }
}
