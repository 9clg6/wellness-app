import 'package:freezed_annotation/freezed_annotation.dart';

part 'real_home.state.freezed.dart';

/// Real home state
@freezed
abstract class RealHomeState with _$RealHomeState {
  /// Constructor
  const factory RealHomeState({
    required String surname,
    required bool isTodayEventsFilled,
    required bool doesReportExist,
  }) = _RealHomeState;

  /// Initial state
  factory RealHomeState.initial({
    String surname = '',
    bool isTodayEventsFilled = false,
    bool doesReportExist = false,
  }) => RealHomeState(
    surname: surname,
    isTodayEventsFilled: isTodayEventsFilled,
    doesReportExist: doesReportExist,
  );
}
