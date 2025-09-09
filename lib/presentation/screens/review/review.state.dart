import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:starter_kit/domain/entities/happen_action.entity.dart';

part 'review.state.freezed.dart';

/// Review state
@Freezed(copyWith: true)
class ReviewState with _$ReviewState {
  /// Constructor
  ReviewState({
    required this.isLoading,
    required this.streakDays,
    required this.entries,
  });

  /// Initial constructor
  ReviewState.initial()
    : isLoading = true,
      streakDays = 0,
      entries = const <HappenActionEntity>[];

  /// Loading flag
  @override
  final bool isLoading;

  /// Streak of consecutive days
  @override
  final int streakDays;

  /// Today's entries
  @override
  final List<HappenActionEntity> entries;
}
