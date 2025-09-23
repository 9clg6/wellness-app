import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:welly/domain/entities/happen_action.entity.dart';

part 'review.state.freezed.dart';

/// Review state
@freezed
abstract class ReviewState with _$ReviewState {
  /// Constructor
  const factory ReviewState({
    required int streakDays,
    required List<HappenActionEntity> entries,
  }) = _ReviewState;

  /// Initial state
  factory ReviewState.initial({
    int streakDays = 0,
    List<HappenActionEntity> entries = const <HappenActionEntity>[],
  }) => ReviewState(streakDays: streakDays, entries: entries);
}
