import 'package:freezed_annotation/freezed_annotation.dart';

part 'happen_action.local_model.freezed.dart';
part 'happen_action.local_model.g.dart';

/// Local model for HappenAction
@freezed
@JsonSerializable()
class HappenActionLocalModel with _$HappenActionLocalModel {
  /// Constructor
  const HappenActionLocalModel({
    required this.happen,
    required this.action,
    required this.date,
  });

  /// fromJson
  factory HappenActionLocalModel.fromJson(Map<String, dynamic> json) =>
      _$HappenActionLocalModelFromJson(json);

  /// toJson
  Map<String, dynamic> toJson() => _$HappenActionLocalModelToJson(this);

  /// What happened
  @override
  final String happen;

  /// What action was taken
  @override
  final String action;

  /// Date of the event
  @override
  final DateTime date;
}
