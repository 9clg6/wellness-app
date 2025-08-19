// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_info.local.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserInfoLocalModel _$UserInfoLocalModelFromJson(Map<String, dynamic> json) =>
    UserInfoLocalModel(
      firstName: json['firstName'] as String?,
      age: (json['age'] as num?)?.toInt(),
      goalIndex: (json['goalIndex'] as num?)?.toInt(),
      completedAt: json['completedAt'] as String?,
      onboardingAnswers: json['onboardingAnswers'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$UserInfoLocalModelToJson(UserInfoLocalModel instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'age': instance.age,
      'goalIndex': instance.goalIndex,
      'completedAt': instance.completedAt,
      'onboardingAnswers': instance.onboardingAnswers,
    };
