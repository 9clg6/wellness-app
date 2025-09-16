// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_response_wrapper.remote.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ApiResponseWrapper _$ApiResponseWrapperFromJson(Map<String, dynamic> json) =>
    _ApiResponseWrapper(
      output: (json['output'] as List<dynamic>)
          .map((e) => ApiMessageModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ApiResponseWrapperToJson(_ApiResponseWrapper instance) =>
    <String, dynamic>{'output': instance.output};
