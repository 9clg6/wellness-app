import 'package:freezed_annotation/freezed_annotation.dart';

part 'education.entity.freezed.dart';

/// Class to represent an education screen
@freezed
abstract class EducationEntity with _$EducationEntity {
  /// Constructor
  factory EducationEntity({
    required String title,
    required String text,
    required String visual,
  }) = _EducationEntity;
}
