import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';
import 'package:starter_kit/domain/entities/onboarding_answers.dart';

part 'first_quizz.state.g.dart';

///
@CopyWith(copyWithNull: true)
final class FirstQuizzState with EquatableMixin {
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
  factory FirstQuizzState.initial() => const FirstQuizzState(
    currentIndex: 0,
    answers: OnboardingAnswers(),
  );

  /// Current question index (0..5)
  final int currentIndex;

  /// Aggregated answers
  final OnboardingAnswers answers;

  /// Temporary fields for Q6 form
  final String? tempName;

  /// Temporary fields for Q6 form
  final String? tempAge;

  /// Quiz is completed
  final bool isCompleted;

  /// Selected index for current question (for UI)
  final int? selectedResponseIndex;

  /// Show button
  final bool showBtn;

  @override
  List<Object?> get props => <Object?>[
    currentIndex,
    answers,
    tempName,
    tempAge,
    isCompleted,
    selectedResponseIndex,
    showBtn,
  ];
}
