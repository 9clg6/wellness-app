import 'package:freezed_annotation/freezed_annotation.dart';

part 'onboarding_answers.freezed.dart';

/// Onboarding an swers
@Freezed(copyWith: true)
class OnboardingAnswers with _$OnboardingAnswers {
  /// Constructor
  const OnboardingAnswers({
    this.frequencyIndex,
    this.discoverySourceIndex,
    this.favoriteThemeIndex,
    this.practiceDurationIndex,
    this.serenityScore,
    this.firstName,
    this.age,
    this.goalIndex,
  });

  /// Frequency index
  @override
  final int? frequencyIndex;

  /// Discovery source index
  @override
  final int? discoverySourceIndex;

  /// Favorite theme index
  @override
  final int? favoriteThemeIndex;

  /// Practice duration index
  @override
  final int? practiceDurationIndex;

  /// Serenity score
  @override
  final int? serenityScore;

  /// First name
  @override
  final String? firstName;

  /// Age
  @override
  final int? age;

  /// Goal index
  @override
  final int? goalIndex;

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
