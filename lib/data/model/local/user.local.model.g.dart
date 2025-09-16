// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.local.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserLocalModel _$UserLocalModelFromJson(Map<String, dynamic> json) =>
    _UserLocalModel(
      id: (json['id'] as num?)?.toInt(),
      email: json['email'] as String?,
      nickname: json['nickname'] as String?,
      lastname: json['lastname'] as String?,
      firstname: json['firstname'] as String?,
      isOnboardingCompleted: json['isOnboardingCompleted'] as bool?,
      streakDays: (json['streakDays'] as num).toInt(),
    );

Map<String, dynamic> _$UserLocalModelToJson(_UserLocalModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'nickname': instance.nickname,
      'lastname': instance.lastname,
      'firstname': instance.firstname,
      'isOnboardingCompleted': instance.isOnboardingCompleted,
      'streakDays': instance.streakDays,
    };
