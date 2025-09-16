// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'onboarding_answers.local.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OnboardingAnswersLocalModel _$OnboardingAnswersLocalModelFromJson(
  Map<String, dynamic> json,
) => _OnboardingAnswersLocalModel(
  frequencyIndex: (json['frequencyIndex'] as num?)?.toInt(),
  discoverySourceIndex: (json['discoverySourceIndex'] as num?)?.toInt(),
  favoriteThemeIndex: (json['favoriteThemeIndex'] as num?)?.toInt(),
  practiceDurationIndex: (json['practiceDurationIndex'] as num?)?.toInt(),
  serenityScore: (json['serenityScore'] as num?)?.toInt(),
  firstName: json['firstName'] as String?,
  age: (json['age'] as num?)?.toInt(),
  goalIndex: (json['goalIndex'] as num?)?.toInt(),
);

Map<String, dynamic> _$OnboardingAnswersLocalModelToJson(
  _OnboardingAnswersLocalModel instance,
) => <String, dynamic>{
  'frequencyIndex': instance.frequencyIndex,
  'discoverySourceIndex': instance.discoverySourceIndex,
  'favoriteThemeIndex': instance.favoriteThemeIndex,
  'practiceDurationIndex': instance.practiceDurationIndex,
  'serenityScore': instance.serenityScore,
  'firstName': instance.firstName,
  'age': instance.age,
  'goalIndex': instance.goalIndex,
};
