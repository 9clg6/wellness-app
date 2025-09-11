import 'package:json_annotation/json_annotation.dart';

part 'happen_action.local_model.g.dart';

/// Local model for HappenAction
@JsonSerializable()
class HappenActionLocalModel {
  /// Constructor
  const HappenActionLocalModel({
    required this.happen,
    required this.action,
    required this.date,
  });

  /// Factory constructor from JSON
  factory HappenActionLocalModel.fromJson(Map<String, dynamic> json) =>
      _$HappenActionLocalModelFromJson(json);

  /// Convert to JSON
  Map<String, dynamic> toJson() => _$HappenActionLocalModelToJson(this);

  /// What happened
  final String happen;

  /// What action was taken
  final String action;

  /// Date of the event
  final DateTime date;
}
