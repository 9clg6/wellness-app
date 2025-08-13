import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';
import 'package:starter_kit/presentation/on_boarding/models/onboarding_answers.dart';

part 'first_quizz.state.g.dart';

///
@CopyWith()
final class FirstQuizzState with EquatableMixin {
  /// Constructor
  const FirstQuizzState({
    required this.currentIndex,
    required this.answers,
    this.tempName,
    this.tempAge,
    this.isCompleted = false,
  });

  /// Initial state
  factory FirstQuizzState.initial() => const FirstQuizzState(
    currentIndex: 0,
    answers: OnboardingAnswers(),
  );

  /// Index de la question en cours (0..5)
  final int currentIndex;

  /// Réponses agrégées
  final OnboardingAnswers answers;

  /// Champs temporaires pour le formulaire de Q6
  final String? tempName;

  /// Champs temporaires pour le formulaire de Q6
  final String? tempAge;

  /// Le quiz est complété
  final bool isCompleted;

  @override
  List<Object?> get props => <Object?>[
    currentIndex,
    answers,
    tempName,
    tempAge,
    isCompleted,
  ];
}
