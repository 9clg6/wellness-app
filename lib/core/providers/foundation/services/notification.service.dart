import 'dart:io';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'package:timezone/timezone.dart' as tz;

/// Service to manage local and Firebase notifications
class NotificationService {
  /// Constructor
  NotificationService();

  /// Flutter local notifications plugin
  final FlutterLocalNotificationsPlugin _localNotifications =
      FlutterLocalNotificationsPlugin();

  /// Firebase messaging instance
  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;

  /// Initialize the notification service
  Future<void> initialize() async {
    try {
      // Initialize timezone data
      tz.initializeTimeZones();

      // Initialize Firebase
      await _initializeFirebase();

      // Initialize local notifications
      await _initializeLocalNotifications();

      // Request permissions
      await _requestPermissions();

      // Setup daily reminders (multiple for better reliability)
      await scheduleMultipleDailyReminders();

      // Check and reschedule if needed
      await checkAndRescheduleNotifications();

      debugPrint('[NotificationService] Initialized successfully');
    } on Exception catch (e) {
      debugPrint('[NotificationService] Initialization error: $e');
      rethrow;
    }
  }

  /// Initialize Firebase Messaging
  Future<void> _initializeFirebase() async {
    try {
      if (Platform.isIOS) {
        // Request notification permissions
        final NotificationSettings settings = await _firebaseMessaging
            .requestPermission();

        debugPrint(
          '[NotificationService] Firebase '
          'permission status: ${settings.authorizationStatus}',
        );

        // For iOS, ensure APNS token is available before making FCM API calls
        // This is required for iOS SDK 10.4.0 and higher
        String? apnsToken;
        int attempts = 0;
        const int maxAttempts = 10;

        while (apnsToken == null && attempts < maxAttempts) {
          apnsToken = await _firebaseMessaging.getAPNSToken();
          if (apnsToken == null) {
            debugPrint(
              '[NotificationService] APNS token not ready, waiting... (attempt ${attempts + 1}/$maxAttempts)',
            );
            await Future<void>.delayed(const Duration(milliseconds: 500));
            attempts++;
          }
        }

        if (apnsToken != null) {
          debugPrint('[NotificationService] APNS Token: $apnsToken');
        } else {
          debugPrint(
            '[NotificationService] APNS token not '
            'available after $maxAttempts attempts',
          );
        }
      }

      // Get FCM token (this might fail if APNS token
      //  is not available, but that's OK)
      try {
        final String? token = await _firebaseMessaging.getToken();
        if (token != null) {
          debugPrint('[NotificationService] FCM Token: $token');
        } else {
          debugPrint('[NotificationService] FCM Token not available');
        }
      } on Exception catch (e) {
        debugPrint('[NotificationService] Could not get FCM token: $e');
      }

      _firebaseMessaging.onTokenRefresh.listen((String token) {
        debugPrint('[NotificationService] FCM Token refreshed: $token');
      });

      // Handle foreground messages
      FirebaseMessaging.onMessage.listen((RemoteMessage message) {
        debugPrint(
          '[NotificationService] Foreground message '
          'received: ${message.messageId}',
        );
        debugPrint('[NotificationService] Message data: ${message.data}');
        debugPrint(
          '[NotificationService] Message notification: '
          '${message.notification?.title}',
        );

        // Show local notification when app is in foreground
        if (message.notification != null) {
          showNotification(
            id: message.hashCode,
            title: message.notification!.title ?? 'Notification',
            body: message.notification!.body ?? '',
            payload: message.data.toString(),
          );
        }
      });

      // Background message handler is registered in main.dart

      // Handle message when app is opened from background
      FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
        debugPrint(
          '[NotificationService] Message opened app: ${message.messageId}',
        );
        debugPrint('[NotificationService] Message data: ${message.data}');
      });
    } on Exception catch (e) {
      debugPrint('[NotificationService] Firebase initialization error: $e');
    }
  }

  /// Initialize local notifications
  Future<void> _initializeLocalNotifications() async {
    try {
      const AndroidInitializationSettings androidSettings =
          AndroidInitializationSettings('@mipmap/ic_launcher');

      const DarwinInitializationSettings iosSettings =
          DarwinInitializationSettings();

      const InitializationSettings initSettings = InitializationSettings(
        android: androidSettings,
        iOS: iosSettings,
      );

      await _localNotifications.initialize(
        initSettings,
        onDidReceiveNotificationResponse: _onNotificationTapped,
      );

      debugPrint('[NotificationService] Local notifications initialized');
    } on Exception catch (e) {
      debugPrint(
        '[NotificationService] Local notifications initialization error: $e',
      );
      rethrow;
    }
  }

  /// Request notification permissions
  Future<void> _requestPermissions() async {
    try {
      if (Platform.isAndroid) {
        // Android permissions
        final bool? result = await _localNotifications
            .resolvePlatformSpecificImplementation<
              AndroidFlutterLocalNotificationsPlugin
            >()
            ?.requestNotificationsPermission();

        if (result ?? false) {
          debugPrint(
            '[NotificationService] Android local notification'
            ' permissions granted',
          );
        } else {
          debugPrint(
            '[NotificationService] Android local notification'
            ' permissions denied',
          );
        }
      } else if (Platform.isIOS) {
        // iOS permissions are handled by Firebase Messaging
        debugPrint(
          '[NotificationService] iOS permissions handled by '
          'Firebase Messaging',
        );
      }
    } on Exception catch (e) {
      debugPrint('[NotificationService] Permission request error: $e');
    }
  }

  /// Request permissions explicitly (to be called from UI)
  Future<bool> requestPermissionsExplicitly() async {
    try {
      if (Platform.isAndroid) {
        final bool? result = await _localNotifications
            .resolvePlatformSpecificImplementation<
              AndroidFlutterLocalNotificationsPlugin
            >()
            ?.requestNotificationsPermission();

        if (result ?? false) {
          debugPrint(
            '[NotificationService] Android explicit permission request granted',
          );
          return true;
        } else {
          debugPrint(
            '[NotificationService] Android explicit permission request denied',
          );
          return false;
        }
      } else if (Platform.isIOS) {
        // For iOS, we need to request through Firebase Messaging
        final NotificationSettings settings = await _firebaseMessaging
            .requestPermission();

        final bool granted =
            settings.authorizationStatus == AuthorizationStatus.authorized ||
            settings.authorizationStatus == AuthorizationStatus.provisional;

        if (granted) {
          debugPrint(
            '[NotificationService] iOS explicit permission request granted',
          );
        } else {
          debugPrint(
            '[NotificationService] iOS explicit permission request denied',
          );
        }

        return granted;
      }
      return false;
    } on Exception catch (e) {
      debugPrint('[NotificationService] Explicit permission request error: $e');
      return false;
    }
  }

  /// Check if notifications are enabled
  Future<bool> areNotificationsEnabled() async {
    try {
      if (Platform.isAndroid) {
        final bool? result = await _localNotifications
            .resolvePlatformSpecificImplementation<
              AndroidFlutterLocalNotificationsPlugin
            >()
            ?.areNotificationsEnabled();
        return result ?? false;
      } else if (Platform.isIOS) {
        final NotificationSettings settings = await _firebaseMessaging
            .getNotificationSettings();
        return settings.authorizationStatus == AuthorizationStatus.authorized ||
            settings.authorizationStatus == AuthorizationStatus.provisional;
      }
      return false;
    } on Exception catch (e) {
      debugPrint(
        '[NotificationService] Error checking notification status: $e',
      );
      return false;
    }
  }

  /// Request permissions with user-friendly approach
  Future<bool> requestPermissionsWithDelay() async {
    try {
      // Check if permissions are already granted
      final bool areEnabled = await areNotificationsEnabled();

      if (areEnabled) {
        debugPrint('[NotificationService] Notifications already enabled');
        return true;
      }

      debugPrint(
        '[NotificationService] Requesting notification permissions...',
      );

      // Request permissions
      final bool granted = await requestPermissionsExplicitly();

      if (granted) {
        debugPrint('[NotificationService] ✅ Notification permissions granted!');
        // Reprogram notifications after getting permissions
        await scheduleMultipleDailyReminders();
      } else {
        debugPrint('[NotificationService] ⚠️ Notification permissions denied');
      }

      return granted;
    } on Exception catch (e) {
      debugPrint(
        '[NotificationService] Error in requestPermissionsWithDelay: $e',
      );
      return false;
    }
  }

  /// Create notification channel for Android
  /// (required for reliable notifications)
  Future<void> _createNotificationChannel() async {
    if (Platform.isAndroid) {
      final AndroidFlutterLocalNotificationsPlugin? androidImplementation =
          _localNotifications
              .resolvePlatformSpecificImplementation<
                AndroidFlutterLocalNotificationsPlugin
              >();

      if (androidImplementation != null) {
        await androidImplementation.createNotificationChannel(
          const AndroidNotificationChannel(
            'daily_reminder',
            'Rappels quotidiens',
            description:
                'Notifications pour rappeler de noter '
                'les événements quotidiens',
            importance: Importance.max,
            enableLights: true,
            ledColor: Color(0xFF2196F3),
            sound: RawResourceAndroidNotificationSound('notification'),
          ),
        );
      }
    }
  }

  /// Calculate next instance of specified time
  tz.TZDateTime _nextInstanceOfTime(int hour, int minute) {
    final tz.TZDateTime now = tz.TZDateTime.now(tz.local);
    tz.TZDateTime scheduledDate = tz.TZDateTime(
      tz.local,
      now.year,
      now.month,
      now.day,
      hour,
      minute,
    );

    if (scheduledDate.isBefore(now)) {
      scheduledDate = scheduledDate.add(const Duration(days: 1));
    }

    return scheduledDate;
  }

  /// Handle notification tap
  void _onNotificationTapped(NotificationResponse response) {
    debugPrint(
      '[NotificationService] Notification tapped: ${response.payload}',
    );
  }

  /// Show immediate notification
  Future<void> showNotification({
    required int id,
    required String title,
    required String body,
    String? payload,
  }) async {
    try {
      await _localNotifications.show(
        id,
        title,
        body,
        const NotificationDetails(
          android: AndroidNotificationDetails(
            'immediate_notifications',
            'Notifications immédiates',
            channelDescription: 'Notifications affichées immédiatement',
            importance: Importance.high,
            priority: Priority.high,
            icon: '@mipmap/ic_launcher',
          ),
          iOS: DarwinNotificationDetails(
            presentAlert: true,
            presentBadge: true,
            presentSound: true,
          ),
        ),
        payload: payload,
      );

      debugPrint('[NotificationService] Immediate notification shown: $title');
    } on Exception catch (e) {
      debugPrint('[NotificationService] Error showing notification: $e');
    }
  }

  /// Cancel specific notification
  Future<void> cancelNotification(int id) async {
    try {
      await _localNotifications.cancel(id);
      debugPrint('[NotificationService] Notification cancelled: $id');
    } on Exception catch (e) {
      debugPrint('[NotificationService] Error cancelling notification: $e');
    }
  }

  /// Cancel all notifications
  Future<void> cancelAllNotifications() async {
    try {
      await _localNotifications.cancelAll();
      debugPrint('[NotificationService] All notifications cancelled');
    } on Exception catch (e) {
      debugPrint(
        '[NotificationService] Error cancelling all notifications: $e',
      );
    }
  }

  /// Get FCM token
  Future<String?> getFCMToken() async {
    try {
      return await _firebaseMessaging.getToken();
    } on Exception catch (e) {
      debugPrint('[NotificationService] Error getting FCM token: $e');
      return null;
    }
  }

  /// Check Firebase Messaging status
  Future<Map<String, dynamic>> getFirebaseMessagingStatus() async {
    try {
      final NotificationSettings settings = await _firebaseMessaging
          .getNotificationSettings();
      final String? token = await _firebaseMessaging.getToken();

      return <String, dynamic>{
        'authorizationStatus': settings.authorizationStatus.toString(),
        'alertSetting': settings.alert.toString(),
        'badgeSetting': settings.badge.toString(),
        'soundSetting': settings.sound.toString(),
        'fcmToken': token,
        'isTokenAvailable': token != null,
      };
    } on Exception catch (e) {
      debugPrint('[NotificationService] Error getting Firebase status: $e');
      return <String, dynamic>{'error': e.toString()};
    }
  }

  /// Test Firebase Messaging by subscribing to a test topic
  Future<void> testFirebaseMessaging() async {
    try {
      // Subscribe to a test topic
      await _firebaseMessaging.subscribeToTopic('test_notifications');
      debugPrint(
        '[NotificationService] Subscribed to test_notifications topic',
      );

      // Get current status
      final Map<String, dynamic> status = await getFirebaseMessagingStatus();
      debugPrint('[NotificationService] Firebase status: $status');

      // Show a test notification
      await showNotification(
        id: 888,
        title: 'Test Firebase',
        body: 'Firebase Messaging est configuré correctement',
        payload: 'firebase_test',
      );
    } on Exception catch (e) {
      debugPrint('[NotificationService] Error testing Firebase: $e');
    }
  }

  /// Test iOS configuration according to Firebase documentation
  Future<void> testIOSConfiguration() async {
    try {
      debugPrint('[NotificationService] === iOS CONFIGURATION TEST ===');

      if (!Platform.isIOS) {
        debugPrint('[NotificationService] This test is for iOS only');
        return;
      }

      // 1. Check notification permissions
      final NotificationSettings settings = await _firebaseMessaging
          .getNotificationSettings();
      debugPrint('[NotificationService] Notification settings:');
      debugPrint(
        '[NotificationService] - Authorization: '
        '${settings.authorizationStatus}',
      );
      debugPrint('[NotificationService] - Alert: ${settings.alert}');
      debugPrint('[NotificationService] - Badge: ${settings.badge}');
      debugPrint('[NotificationService] - Sound: ${settings.sound}');

      // 2. Check APNS token availability
      final String? apnsToken = await _firebaseMessaging.getAPNSToken();
      if (apnsToken != null) {
        debugPrint('[NotificationService] ✅ APNS Token available: $apnsToken');
      } else {
        debugPrint('[NotificationService] ❌ APNS Token not available');
      }

      // 3. Get FCM token
      final String? fcmToken = await _firebaseMessaging.getToken();
      if (fcmToken != null) {
        debugPrint('[NotificationService] ✅ FCM Token available: $fcmToken');
      } else {
        debugPrint('[NotificationService] ❌ FCM Token not available');
      }

      // 4. Subscribe to test topic
      await _firebaseMessaging.subscribeToTopic('ios_config_test');
      debugPrint('[NotificationService] ✅ Subscribed to ios_config_test topic');

      debugPrint(
        '[NotificationService] === iOS CONFIGURATION TEST COMPLETED ===',
      );
      debugPrint(
        '[NotificationService] Send a message to topic "ios_config_test" '
        'from Firebase Console',
      );
      debugPrint(
        '[NotificationService] Make sure the app is in background when testing',
      );
    } on Exception catch (e) {
      debugPrint('[NotificationService] ❌ iOS configuration test error: $e');
    }
  }

  /// Subscribe to topic
  Future<void> subscribeToTopic(String topic) async {
    try {
      await _firebaseMessaging.subscribeToTopic(topic);
      debugPrint('[NotificationService] Subscribed to topic: $topic');
    } on Exception catch (e) {
      debugPrint('[NotificationService] Error subscribing to topic: $e');
    }
  }

  /// Unsubscribe from topic
  Future<void> unsubscribeFromTopic(String topic) async {
    try {
      await _firebaseMessaging.unsubscribeFromTopic(topic);
      debugPrint('[NotificationService] Unsubscribed from topic: $topic');
    } on Exception catch (e) {
      debugPrint('[NotificationService] Error unsubscribing from topic: $e');
    }
  }

  /// Update daily reminder time
  Future<void> updateDailyReminderTime(int hour, int minute) async {
    try {
      await _localNotifications.cancel(1);

      // Create notification channel
      await _createNotificationChannel();

      await _localNotifications.zonedSchedule(
        1,
        'Welly',
        "N'oubliez pas de noter les événements de votre journée !",
        _nextInstanceOfTime(hour, minute),
        const NotificationDetails(
          android: AndroidNotificationDetails(
            'daily_reminder',
            'Rappels quotidiens',
            channelDescription:
                'Notifications pour rappeler de '
                'noter les événements quotidiens',
            importance: Importance.max,
            icon: '@mipmap/ic_launcher',
            enableLights: true,
            ledColor: Color(0xFF2196F3),
            visibility: NotificationVisibility.public,
            category: AndroidNotificationCategory.reminder,
            autoCancel: false,
            color: Color(0xFF2196F3),
            colorized: true,
            styleInformation: BigTextStyleInformation(
              "N'oubliez pas de noter les événements de votre journée !",
              htmlFormatBigText: true,
              contentTitle: 'Welly',
              htmlFormatContentTitle: true,
              summaryText: 'Welly - Rappel quotidien',
              htmlFormatSummaryText: true,
            ),
          ),
          iOS: DarwinNotificationDetails(
            presentAlert: true,
            presentBadge: true,
            presentSound: true,
            sound: 'default',
            badgeNumber: 1,
            categoryIdentifier: 'DAILY_REMINDER',
            threadIdentifier: 'daily_reminder',
            interruptionLevel: InterruptionLevel.active,
          ),
        ),
        androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
        matchDateTimeComponents: DateTimeComponents.time,
        payload: 'daily_reminder',
      );

      debugPrint(
        '[NotificationService] Daily reminder updated to $hour:$minute',
      );
    } on Exception catch (e) {
      debugPrint('[NotificationService] Error updating daily reminder: $e');
    }
  }

  /// Schedule multiple daily reminders for better reliability
  Future<void> scheduleMultipleDailyReminders() async {
    try {
      await _localNotifications.cancel(1);
      await _localNotifications.cancel(2);
      await _localNotifications.cancel(3);

      await _createNotificationChannel();

      await _localNotifications.zonedSchedule(
        1,
        'Rappel quotidien',
        "N'oubliez pas de noter les événements de votre journée !",
        _nextInstanceOfTime(19, 0),
        _getDailyReminderNotificationDetails(),
        androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
        matchDateTimeComponents: DateTimeComponents.time,
        payload: 'daily_reminder_primary',
      );

      await _localNotifications.zonedSchedule(
        2,
        'Rappel quotidien',
        "N'oubliez pas de noter les événements de votre journée !",
        _nextInstanceOfTime(19, 30),
        _getDailyReminderNotificationDetails(),
        androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
        matchDateTimeComponents: DateTimeComponents.time,
        payload: 'daily_reminder_backup',
      );

      await _localNotifications.zonedSchedule(
        3,
        'Dernier rappel',
        'Il est temps de noter les événements de votre journée !',
        _nextInstanceOfTime(21, 0),
        _getDailyReminderNotificationDetails(),
        androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
        matchDateTimeComponents: DateTimeComponents.time,
        payload: 'daily_reminder_final',
      );

      debugPrint('[NotificationService] Multiple daily reminders scheduled');
    } on Exception catch (e) {
      debugPrint(
        '[NotificationService] Error scheduling multiple reminders: $e',
      );
    }
  }

  /// Get notification details for daily reminders
  NotificationDetails _getDailyReminderNotificationDetails() {
    return const NotificationDetails(
      android: AndroidNotificationDetails(
        'daily_reminder',
        'Rappels quotidiens',
        channelDescription:
            'Notifications pour rappeler de noter les événements quotidiens',
        importance: Importance.max,
        priority: Priority.max,
        icon: '@mipmap/ic_launcher',
        enableLights: true,
        ledColor: Color(0xFF2196F3),
        visibility: NotificationVisibility.public,
        category: AndroidNotificationCategory.reminder,
        autoCancel: false,
        color: Color(0xFF2196F3),
        colorized: true,
        styleInformation: BigTextStyleInformation(
          "N'oubliez pas de noter les événements de votre journée !",
          htmlFormatBigText: true,
          contentTitle: 'Rappel quotidien',
          htmlFormatContentTitle: true,
          summaryText: 'Welly - Rappel quotidien',
          htmlFormatSummaryText: true,
        ),
      ),
      iOS: DarwinNotificationDetails(
        presentAlert: true,
        presentBadge: true,
        presentSound: true,
        sound: 'default',
        badgeNumber: 1,
        categoryIdentifier: 'DAILY_REMINDER',
        threadIdentifier: 'daily_reminder',
        interruptionLevel: InterruptionLevel.active,
      ),
    );
  }

  /// Check and reschedule notifications if needed
  Future<void> checkAndRescheduleNotifications() async {
    try {
      final List<PendingNotificationRequest> pendingNotifications =
          await _localNotifications.pendingNotificationRequests();

      final int dailyReminderCount = pendingNotifications
          .where(
            (PendingNotificationRequest notification) =>
                notification.id >= 1 && notification.id <= 3,
          )
          .length;

      if (dailyReminderCount < 3) {
        debugPrint(
          '[NotificationService] Missing daily reminders ($dailyReminderCount/3), rescheduling...',
        );
        await scheduleMultipleDailyReminders();
      } else {
        debugPrint('[NotificationService] All daily reminders are scheduled');
      }
    } on Exception catch (e) {
      debugPrint('[NotificationService] Error checking notifications: $e');
    }
  }

  /// Get pending notifications info
  Future<List<PendingNotificationRequest>> getPendingNotifications() async {
    try {
      return await _localNotifications.pendingNotificationRequests();
    } on Exception catch (e) {
      debugPrint(
        '[NotificationService] Error getting pending notifications: $e',
      );
      return <PendingNotificationRequest>[];
    }
  }
}
