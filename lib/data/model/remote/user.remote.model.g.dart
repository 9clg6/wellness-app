// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.remote.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserRemoteModel _$UserRemoteModelFromJson(Map<String, dynamic> json) =>
    _UserRemoteModel(
      id: (json['id'] as num?)?.toInt(),
      email: json['email'] as String?,
      nickname: json['nickname'] as String?,
      lastname: json['lastname'] as String?,
      firstname: json['firstname'] as String?,
    );

Map<String, dynamic> _$UserRemoteModelToJson(_UserRemoteModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'nickname': instance.nickname,
      'lastname': instance.lastname,
      'firstname': instance.firstname,
    };
