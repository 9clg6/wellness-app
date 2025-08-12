import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:starter_kit/core/providers/core/services/happen_action.service.provider.dart';
import 'package:starter_kit/core/providers/foundation/services/happen_action.service.dart';
import 'package:starter_kit/domain/entities/happen_action.entity.dart';
import 'package:starter_kit/presentation/screens/review/review.state.dart';

part 'review.view_model.g.dart';

/// Review view model
@riverpod
class ReviewViewModel extends _$ReviewViewModel {
  /// Happen action service
  late final HappenActionService service;

  @override
  ReviewState build() {
    service = ref.watch(happenActionServiceProvider);
    final List<HappenActionEntity> entries =
        List<HappenActionEntity>.from(service.entries)..addAll(
          List<HappenActionEntity>.generate(
            3,
            (int index) => HappenActionEntity(
              happen: 'Test $index',
              action: 'Test $index',
            ),
          ),
        );

    return ReviewState(
      isLoading: false,
      streakDays: service.streakDays,
      entries: entries,
    );
  }

  /// Refresh data from the home view model
  void refreshFromHome() {
    final HappenActionService service = ref.read(happenActionServiceProvider);
    state = state.copyWith(
      isLoading: false,
      streakDays: service.streakDays,
      entries: List<HappenActionEntity>.from(service.entries),
    );
  }
}
