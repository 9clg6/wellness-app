import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';
import 'package:starter_kit/domain/entities/happen_action.entity.dart';

part 'review.state.g.dart';

/// Review state
@CopyWith()
class ReviewState with EquatableMixin {
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
  final bool isLoading;

  /// Streak of consecutive days
  final int streakDays;

  /// Today's entries
  final List<HappenActionEntity> entries;

  @override
  List<Object?> get props => <Object?>[isLoading, streakDays, entries];
}
