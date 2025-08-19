import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';

part 'onboarding_answers.g.dart';

/// Onboarding an swers
@CopyWith()
class OnboardingAnswers with EquatableMixin {
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
  final int? frequencyIndex;

  /// Discovery source index
  final int? discoverySourceIndex;

  /// Favorite theme index
  final int? favoriteThemeIndex;

  /// Practice duration index
  final int? practiceDurationIndex;

  /// Serenity score
  final int? serenityScore;

  /// First name
  final String? firstName;

  /// Age
  final int? age;

  /// Goal index
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

  @override
  List<Object?> get props => <Object?>[
    frequencyIndex,
    discoverySourceIndex,
    favoriteThemeIndex,
    practiceDurationIndex,
    serenityScore,
    firstName,
    age,
    goalIndex,
  ];
}
