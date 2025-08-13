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
  final int? frequencyIndex; // 0: Jamais, 1: Parfois, 2: Souvent

  /// Discovery source index
  final int? discoverySourceIndex; // 0: Réseau social, 1: Ami, 2: Autre

  /// Favorite theme index
  final int? favoriteThemeIndex; // 0..4

  /// Practice duration index
  final int? practiceDurationIndex; // 0: Jamais, 1: <1 an, 2: >1 an

  /// Serenity score
  final int? serenityScore; // 1..5

  /// First name
  final String? firstName;

  /// Age
  final int? age;

  /// Goal index
  final int? goalIndex; // 0..n

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
