import 'package:freezed_annotation/freezed_annotation.dart';

part 'happen_action.local_model.freezed.dart';
part 'happen_action.local_model.g.dart';

/// Local model for HappenAction
@freezed
abstract class HappenActionLocalModel with _$HappenActionLocalModel {
  /// Constructor
  factory HappenActionLocalModel({
    @JsonKey(name: 'happen') required String happen,
    @JsonKey(name: 'action') required String action,
    @JsonKey(name: 'date') required DateTime date,
  }) = _HappenActionLocalModel;

  /// fromJson
  factory HappenActionLocalModel.fromJson(Map<String, dynamic> json) =>
      _$HappenActionLocalModelFromJson(json);
}
