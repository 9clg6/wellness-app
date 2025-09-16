import 'package:freezed_annotation/freezed_annotation.dart';

part 'testimonial.entity.freezed.dart';

/// Class to represent a testimonial
@freezed
abstract class Testimonial with _$Testimonial {
  /// Constructor
  factory Testimonial({
      required String quote,
    required String author,
    required String source,
    required int year,
    required String emoji,
  }) = _Testimonial;
}
