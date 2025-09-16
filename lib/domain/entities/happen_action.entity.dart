import 'package:freezed_annotation/freezed_annotation.dart';

part 'happen_action.entity.freezed.dart';

/// Happen action entity (without date)
@freezed
abstract class HappenActionEntity with _$HappenActionEntity {
  /// Constructor
  factory HappenActionEntity({required String happen, required String action}) =
      _HappenActionEntity;
}
