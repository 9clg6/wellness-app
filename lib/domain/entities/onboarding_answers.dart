import 'package:freezed_annotation/freezed_annotation.dart';

part 'onboarding_answers.freezed.dart';

/// Onboarding answers
@freezed
abstract class OnboardingAnswers with _$OnboardingAnswers {
  /// Constructor
  factory OnboardingAnswers({
    int? frequencyIndex,
    int? discoverySourceIndex,
    int? favoriteThemeIndex,
    int? practiceDurationIndex,
    int? serenityScore,
    String? firstName,
    int? age,
    int? goalIndex,
  }) = _OnboardingAnswers;
}

/// Extension for OnboardingAnswers utilities
extension OnboardingAnswersExtension on OnboardingAnswers {
  /// Is quizz complete
  bool get isQuizzComplete =>
      frequencyIndex != null &&
      discoverySourceIndex != null &&
      favoriteThemeIndex != null &&
      practiceDurationIndex != null &&
      serenityScore != null &&
      firstName != null &&
      (age != null && age! > 0);
}
