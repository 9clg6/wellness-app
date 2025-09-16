import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:starter_kit/domain/entities/onboarding_answers.dart';

part 'first_quizz.state.freezed.dart';

///
@Freezed(copyWith: true)
final class FirstQuizzState with _$FirstQuizzState {
  /// Constructor
  const FirstQuizzState({
    required this.currentIndex,
    required this.answers,
    this.tempName,
    this.tempAge,
    this.isCompleted = false,
    this.selectedResponseIndex,
    this.showBtn = false,
  });

  /// Initial state
  factory FirstQuizzState.initial() =>
      FirstQuizzState(currentIndex: 0, answers: OnboardingAnswers());

  /// Current question index (0..5)
  @override
  final int currentIndex;

  /// Aggregated answers
  @override
  final OnboardingAnswers answers;

  /// Temporary fields for Q6 form
  @override
  final String? tempName;

  /// Temporary fields for Q6 form
  @override
  final String? tempAge;

  /// Quiz is completed
  @override
  final bool isCompleted;

  /// Selected index for current question (for UI)
  @override
  final int? selectedResponseIndex;

  /// Show button
  @override
  final bool showBtn;
}
