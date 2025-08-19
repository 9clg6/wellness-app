import 'package:json_annotation/json_annotation.dart';
import 'package:starter_kit/domain/entities/onboarding_answers.dart';

part 'onboarding_answers.local.model.g.dart';

/// Local model for onboarding answers with JSON serialization
@JsonSerializable()
class OnboardingAnswersLocalModel {
  /// Constructor
  const OnboardingAnswersLocalModel({
    this.frequencyIndex,
    this.discoverySourceIndex,
    this.favoriteThemeIndex,
    this.practiceDurationIndex,
    this.serenityScore,
    this.firstName,
    this.age,
    this.goalIndex,
  });

  /// From JSON
  factory OnboardingAnswersLocalModel.fromJson(Map<String, dynamic> json) =>
      _$OnboardingAnswersLocalModelFromJson(json);

  /// To JSON
  Map<String, dynamic> toJson() => _$OnboardingAnswersLocalModelToJson(this);

  /// Convert to domain entity
  OnboardingAnswers toEntity() {
    return OnboardingAnswers(
      frequencyIndex: frequencyIndex,
      discoverySourceIndex: discoverySourceIndex,
      favoriteThemeIndex: favoriteThemeIndex,
      practiceDurationIndex: practiceDurationIndex,
      serenityScore: serenityScore,
      firstName: firstName,
      age: age,
      goalIndex: goalIndex,
    );
  }

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
}
