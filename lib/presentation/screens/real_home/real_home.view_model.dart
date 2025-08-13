import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:starter_kit/core/extensions/date.extension.dart';
import 'package:starter_kit/core/providers/core/services/happen_action.service.provider.dart';
import 'package:starter_kit/core/providers/core/services/navigation.service.provider.dart';
import 'package:starter_kit/core/providers/foundation/services/happen_action.service.dart';
import 'package:starter_kit/core/providers/foundation/services/navigation.service.dart';
import 'package:starter_kit/domain/entities/happen_action.entity.dart';
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
  RealHomeState build() {
    _happenActionService = ref.watch(happenActionServiceProvider);
    _navigationService = ref.watch(navigationServiceProvider);

    getStreak();

    return RealHomeState.initial();
  }

  /// Is something happened this day
  bool isSomethingHappenedThisDay({required DateTime date}) {
    return _happenActionService.entries.any(
      (HappenActionEntity entry) => entry.date.isSameDate(date),
    );
  }

  /// Get streak
  int getStreak() {
    final Set<DateTime> daysWithEntries = _happenActionService.entries
        .map((HappenActionEntity e) => e.date.dateWithoutTime)
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
  void onTapAddHappenAction() {
    _navigationService.navigateToDailyJourney();
  }

  /// Build streak message
  String buildStreakMessage() {
    switch (streakDays) {
      case < 3:
        return '🪄 Vous commencerez à voir les effets positifs dans ${3 - streakDays} jours !';
      case 3:
        return "😍 Vous commencerez à voir les effets à partir d'aujourd'hui !";
      case > 3:
        return '😎 Adieu biais de négativité !';
    }
    return '';
  }
}
