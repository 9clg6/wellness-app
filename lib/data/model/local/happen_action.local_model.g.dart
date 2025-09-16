// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'happen_action.local_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_HappenActionLocalModel _$HappenActionLocalModelFromJson(
  Map<String, dynamic> json,
) => _HappenActionLocalModel(
  happen: json['happen'] as String,
  action: json['action'] as String,
  date: DateTime.parse(json['date'] as String),
);

Map<String, dynamic> _$HappenActionLocalModelToJson(
  _HappenActionLocalModel instance,
) => <String, dynamic>{
  'happen': instance.happen,
  'action': instance.action,
  'date': instance.date.toIso8601String(),
};
