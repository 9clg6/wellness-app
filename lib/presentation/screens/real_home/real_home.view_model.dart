import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:starter_kit/core/extensions/date.extension.dart';
import 'package:starter_kit/core/providers/core/services/happen_action.service.provider.dart';
import 'package:starter_kit/core/providers/foundation/services/happen_action.service.dart';
import 'package:starter_kit/domain/entities/happen_action.entity.dart';
import 'package:starter_kit/presentation/screens/real_home/real_home.state.dart';

part 'real_home.view_model.g.dart';

/// Real home view model
@riverpod
class RealHomeViewModel extends _$RealHomeViewModel {
  late final HappenActionService _happenActionService;

  @override
  RealHomeState build() {
    _happenActionService = ref.watch(happenActionServiceProvider);

    return RealHomeState.initial();
  }

  /// Is something happened this day
  bool isSomethingHappenedThisDay({required DateTime date}) {
    return _happenActionService.entries.any(
      (HappenActionEntity entry) => entry.date.isSameDate(date),
    );
  }
}
