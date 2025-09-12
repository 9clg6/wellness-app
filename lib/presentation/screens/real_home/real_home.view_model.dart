import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:starter_kit/core/extensions/date.extension.dart';
import 'package:starter_kit/core/localization/generated/locale_keys.g.dart';
import 'package:starter_kit/core/providers/core/services/happen_action.service.provider.dart';
import 'package:starter_kit/core/providers/core/services/navigation.service.provider.dart';
import 'package:starter_kit/core/providers/core/services/user.service.provider.dart';
import 'package:starter_kit/core/providers/foundation/services/happen_action.service.dart';
import 'package:starter_kit/core/providers/foundation/services/navigation.service.dart';
import 'package:starter_kit/core/providers/foundation/services/user.service.dart';
import 'package:starter_kit/domain/entities/daily_happen_action.entity.dart';
import 'package:starter_kit/presentation/screens/real_home/real_home.state.dart';

part 'real_home.view_model.g.dart';

/// Real home view model
@riverpod
class RealHomeViewModel extends _$RealHomeViewModel {
  late final HappenActionService _happenActionService;
  late final NavigationService _navigationService;

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

    getStreak();

    return RealHomeState.initial(
      surname: userService.currentUser!.firstname!,
      isTodayEventsFilled: _happenActionService.isTodayEventsFilled,
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
  Future<void> onTapAddHappenAction() async {
    final bool? isTodayEventsFilled = await _navigationService
        .navigateToDailyJourney(isFromRealHome: true);

    if (isTodayEventsFilled == null) return;

    state = AsyncData<RealHomeState>(
      state.value!.copyWith(isTodayEventsFilled: isTodayEventsFilled),
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
}
