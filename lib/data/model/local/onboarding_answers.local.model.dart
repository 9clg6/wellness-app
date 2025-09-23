import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:welly/domain/entities/onboarding_answers.dart';

part 'onboarding_answers.local.model.freezed.dart';
part 'onboarding_answers.local.model.g.dart';

/// Local model for onboarding answers with JSON serialization
@freezed
abstract class OnboardingAnswersLocalModel with _$OnboardingAnswersLocalModel {
  /// Constructor
  factory OnboardingAnswersLocalModel({
    @JsonKey(name: 'frequencyIndex') required int? frequencyIndex,
    @JsonKey(name: 'discoverySourceIndex') required int? discoverySourceIndex,
    @JsonKey(name: 'favoriteThemeIndex') required int? favoriteThemeIndex,
    @JsonKey(name: 'practiceDurationIndex') required int? practiceDurationIndex,
    @JsonKey(name: 'serenityScore') required int? serenityScore,
    @JsonKey(name: 'firstName') required String? firstName,
    @JsonKey(name: 'age') required int? age,
    @JsonKey(name: 'goalIndex') required int? goalIndex,
  }) = _OnboardingAnswersLocalModel;

  /// fromJson
  factory OnboardingAnswersLocalModel.fromJson(Map<String, dynamic> json) =>
      _$OnboardingAnswersLocalModelFromJson(json);
}

/// Extension for OnboardingAnswersLocalModel utilities
extension OnboardingAnswersLocalModelExtension on OnboardingAnswersLocalModel {
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
}
