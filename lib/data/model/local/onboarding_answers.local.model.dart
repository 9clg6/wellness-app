import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:starter_kit/domain/entities/onboarding_answers.dart';

part 'onboarding_answers.local.model.freezed.dart';
part 'onboarding_answers.local.model.g.dart';

/// Local model for onboarding answers with JSON serialization
@freezed
@JsonSerializable()
class OnboardingAnswersLocalModel with _$OnboardingAnswersLocalModel {
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

  /// fromJson
  factory OnboardingAnswersLocalModel.fromJson(Map<String, dynamic> json) =>
      _$OnboardingAnswersLocalModelFromJson(json);

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

  /// toJson
  Map<String, dynamic> toJson() => _$OnboardingAnswersLocalModelToJson(this);

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
}
