import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:welly/domain/entities/onboarding_answers.dart';

part 'first_quizz.state.freezed.dart';

///
@freezed
abstract class FirstQuizzState with _$FirstQuizzState {
  /// Constructor
  const factory FirstQuizzState({
    required OnboardingAnswers answers,
    required int currentIndex,
    required bool isCompleted,
    required bool showBtn,
    String? tempName,
    String? tempAge,
    int? selectedResponseIndex,
  }) = _FirstQuizzState;

  /// Initial state
  factory FirstQuizzState.initial() => FirstQuizzState(
    answers: OnboardingAnswers(),
    currentIndex: 0,
    isCompleted: false,
    showBtn: false,
  );
}
