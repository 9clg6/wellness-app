/// Analytics event constants for consistent tracking
class AnalyticsEvents {
  // Authentication events

  /// Login Google button pressed
  static const String loginGooglePressed = 'login_google_pressed';

  /// Login Apple button pressed
  static const String loginApplePressed = 'login_apple_pressed';

  /// Login Google success
  static const String loginGoogleSuccess = 'login_google_success';

  /// Login Apple success
  static const String loginAppleSuccess = 'login_apple_success';

  /// Login Google error
  static const String loginGoogleError = 'login_google_error';

  /// Login Apple error
  static const String loginAppleError = 'login_apple_error';

  /// Skip authentication pressed
  static const String skipAuthPressed = 'skip_auth_pressed';

  // Error tracking events
  /// Network error occurred
  static const String networkError = 'network_error';

  /// Payment error occurred
  static const String paymentError = 'payment_error';

  /// System error occurred
  static const String systemError = 'system_error';

  /// Onboarding events
  static const String onboardingStarted = 'onboarding_started';

  /// onboardingStepCompleted
  static const String onboardingStepCompleted = 'onboarding_step_completed';

  /// onboardingCompleted
  static const String onboardingCompleted = 'onboarding_completed';

  /// onboardingSkipped
  static const String onboardingSkipped = 'onboarding_skipped';

  /// Quiz events
  static const String quizStarted = 'quiz_started';

  /// quizQuestionAnswered
  static const String quizQuestionAnswered = 'quiz_question_answered';

  /// quizCompleted
  static const String quizCompleted = 'quiz_completed';

  // Paywall events
  /// paywallShown
  static const String paywallShown = 'paywall_shown';

  /// paywallPurchaseStarted
  static const String paywallPurchaseStarted = 'paywall_purchase_started';

  /// paywallPurchaseCompleted
  static const String paywallPurchaseCompleted = 'paywall_purchase_completed';

  /// paywallPurchaseCancelled
  static const String paywallPurchaseCancelled = 'paywall_purchase_cancelled';

  /// paywallPurchaseError
  static const String paywallPurchaseError = 'paywall_purchase_error';

  /// paywallDismissed
  static const String paywallDismissed = 'paywall_dismissed';

  /// notificationPermissionRequested
  static const String notificationPermissionRequested =
      'notification_permission_requested';

  /// notificationPermissionGranted
  static const String notificationPermissionGranted =
      'notification_permission_granted';

  /// notificationPermissionDenied
  static const String notificationPermissionDenied =
      'notification_permission_denied';

  /// homePageViewed
  static const String homePageViewed = 'home_page_viewed';

  /// realHomePageViewed
  static const String realHomePageViewed = 'real_home_page_viewed';

  /// startButtonPressed
  static const String startButtonPressed = 'start_button_pressed';

  /// reviewButtonPressed
  static const String reviewButtonPressed = 'review_button_pressed';

  /// aiAnalyzeButtonPressed
  static const String aiAnalyzeButtonPressed = 'ai_analyze_button_pressed';

  /// navigationToHome
  static const String navigationToHome = 'navigation_to_home';

  /// navigationToReview
  static const String navigationToReview = 'navigation_to_review';

  /// navigationToAiAnalyze
  static const String navigationToAiAnalyze = 'navigation_to_ai_analyze';

  // App lifecycle events
  /// appOpened
  static const String appOpened = 'app_opened';

  /// appBackgrounded
  static const String appBackgrounded = 'app_backgrounded';

  /// appForegrounded
  static const String appForegrounded = 'app_foregrounded';

  // Settings events
  /// settingsNotificationsChanged
  static const String settingsNotificationsChanged =
      'settings_notifications_changed';

  /// settingsLogoutConfirmed
  static const String settingsLogoutConfirmed = 'settings_logout_confirmed';

  /// settingsPrivacyOpened
  static const String settingsPrivacyOpened = 'settings_privacy_opened';

  /// settingsDeleteAccountConfirmed
  static const String settingsDeleteAccountConfirmed =
      'settings_delete_account_confirmed';
}
