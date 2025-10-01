import 'dart:async';

import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:welly/core/extensions/date.extension.dart';
import 'package:welly/core/localization/generated/locale_keys.g.dart';
import 'package:welly/core/providers/core/services/ai.service.provider.dart';
import 'package:welly/core/providers/core/services/happen_action.service.provider.dart';
import 'package:welly/core/providers/core/services/navigation.service.provider.dart';
import 'package:welly/core/providers/core/services/notification.service.provider.dart';
import 'package:welly/core/providers/core/services/user.service.provider.dart';
import 'package:welly/core/providers/foundation/services/ai.service.dart';
import 'package:welly/core/providers/foundation/services/happen_action.service.dart';
import 'package:welly/core/providers/foundation/services/navigation.service.dart';
import 'package:welly/core/providers/foundation/services/notification.service.dart';
import 'package:welly/core/providers/foundation/services/user.service.dart';
import 'package:welly/domain/entities/daily_happen_action.entity.dart';
import 'package:welly/presentation/screens/real_home/real_home.state.dart';

part 'real_home.view_model.g.dart';

/// Real home view model
@riverpod
class RealHomeViewModel extends _$RealHomeViewModel {
  late final HappenActionService _happenActionService;
  late final NavigationService _navigationService;
  late final AiService _aiService;
  late final NotificationService _notificationService;

  /// First day of streak
  DateTime? firstDayOfStreak;

  /// Last day of streak
  DateTime? lastDayOfStreak;

  /// Streak days (calculated)
  int get streakDays => getStreak();

  @override
  Future<RealHomeState> build() async {
    debugPrint('[RealHomeViewModel] build');
    _happenActionService = await ref.watch(happenActionServiceProvider.future);
    final UserService userService = await ref.watch(userServiceProvider.future);
    _navigationService = ref.watch(navigationServiceProvider);
    _aiService = await ref.watch(aiServiceProvider.future);
    _notificationService = await ref.watch(notificationServiceProvider.future);

    _aiService.reportExistsStream.listen((bool reportExists) {
      state = AsyncValue<RealHomeState>.data(
        state.value!.copyWith(doesReportExist: reportExists),
      );
    });

    getStreak();

    return RealHomeState.initial(
      surname: userService.currentUser!.firstname!,
      isTodayEventsFilled: _happenActionService.isTodayEventsFilled,
      doesReportExist: _aiService.reportExists,
    );
  }

  /// Is something happened this day
  bool isSomethingHappenedThisDay({DateTime? date}) {
    final DateTime targetDate = date ?? DateTime.now();
    return _happenActionService.entries.any(
      (DailyHappenActionEntity dailyEntry) =>
          dailyEntry.date.isSameDate(targetDate) && dailyEntry.isComplete,
    );
  }

  /// Get streak
  int getStreak() {
    final Set<DateTime> daysWithEntries = _happenActionService.entries
        .where((DailyHappenActionEntity dailyEntry) => dailyEntry.isComplete)
        .map(
          (DailyHappenActionEntity dailyEntry) =>
              dailyEntry.date.dateWithoutTime,
        )
        .toSet();

    int streak = 0;

    final DateTime today = DateTime.now().dateWithoutTime;
    final DateTime yesterday = today.subtract(const Duration(days: 1));
    DateTime? anchor;
    if (daysWithEntries.contains(today)) {
      anchor = today;
    } else if (daysWithEntries.contains(yesterday)) {
      anchor = yesterday;
    }

    if (anchor == null) {
      firstDayOfStreak = null;
      lastDayOfStreak = null;
      return 0;
    }

    DateTime cursor = anchor;

    while (daysWithEntries.contains(cursor)) {
      streak++;
      cursor = cursor.subtract(const Duration(days: 1));
    }

    firstDayOfStreak = cursor.add(const Duration(days: 1));
    lastDayOfStreak = anchor;

    return streak;
  }

  /// Is this day in streak
  bool isThisDayInStreak({required DateTime date}) {
    if (firstDayOfStreak == null || lastDayOfStreak == null) {
      getStreak();
      if (firstDayOfStreak == null || lastDayOfStreak == null) {
        return false;
      }
    }

    final DateTime normalized = DateTime(date.year, date.month, date.day);
    final DateTime start = DateTime(
      firstDayOfStreak!.year,
      firstDayOfStreak!.month,
      firstDayOfStreak!.day,
    );
    final DateTime end = DateTime(
      lastDayOfStreak!.year,
      lastDayOfStreak!.month,
      lastDayOfStreak!.day,
    );

    final bool isOnOrAfterStart =
        normalized.isAtSameMomentAs(start) || normalized.isAfter(start);
    final bool isOnOrBeforeEnd =
        normalized.isAtSameMomentAs(end) || normalized.isBefore(end);
    return isOnOrAfterStart && isOnOrBeforeEnd;
  }

  /// On tap add happen action
  Future<void> onTapAddHappenAction({required bool isTodayEventsFilled}) async {
    if (isTodayEventsFilled) {
      await _navigationService.navigateToReview();
      return;
    }

    final bool? result = await _navigationService.navigateToDailyJourney(
      isFromRealHome: true,
    );

    if (result == null) return;

    state = AsyncData<RealHomeState>(
      state.value!.copyWith(isTodayEventsFilled: result),
    );
  }

  /// Build streak message
  String buildStreakMessage() {
    switch (streakDays) {
      case < 7:
        return LocaleKeys.onboarding_streak_message_1.tr(
          args: <String>[(7 - streakDays).toString()],
        );
      case 7:
        return LocaleKeys.onboarding_streak_message_2.tr();
      case > 7:
        return LocaleKeys.onboarding_streak_message_3.tr();
    }
    return '';
  }

  /// On tap analyze with ai
  void onTapAnalyzeWithAi() {
    _navigationService.navigateToAnalyzeWithAi();
  }

  /// On tap review old events
  void onTapReviewOldEvents() {}

  /// Test notification (for development purposes)
  Future<void> testNotification() async {
    try {
      await _notificationService.showNotification(
        id: 999,
        title: 'Test de notification',
        body: 'Ceci est un test de notification locale',
        payload: 'test_notification',
      );
    } on Exception catch (e, s) {
      debugPrint('Error showing test notification: $e');
      unawaited(FirebaseCrashlytics.instance.recordError(e, s));
    }
  }

  /// Test Firebase Messaging
  Future<void> testFirebaseMessaging() async {
    try {
      await _notificationService.testFirebaseMessaging();
    } on Exception catch (e, s) {
      debugPrint('Error testing Firebase: $e');
      unawaited(FirebaseCrashlytics.instance.recordError(e, s));
    }
  }

  /// Get Firebase status
  Future<Map<String, dynamic>> getFirebaseStatus() async {
    try {
      return await _notificationService.getFirebaseMessagingStatus();
    } on Exception catch (e, s) {
      debugPrint('Error getting Firebase status: $e');
      unawaited(FirebaseCrashlytics.instance.recordError(e, s));
      return <String, dynamic>{'error': e.toString()};
    }
  }

  /// Get FCM token
  Future<String?> getFCMToken() async {
    try {
      return await _notificationService.getFCMToken();
    } on Exception catch (e, s) {
      debugPrint('Error getting FCM token: $e');
      unawaited(FirebaseCrashlytics.instance.recordError(e, s));
      return null;
    }
  }

  /// Test iOS configuration
  Future<void> testIOSConfiguration() async {
    try {
      await _notificationService.testIOSConfiguration();
    } on Exception catch (e, s) {
      debugPrint('Error testing iOS configuration: $e');
      unawaited(FirebaseCrashlytics.instance.recordError(e, s));
    }
  }
}
