import 'package:freezed_annotation/freezed_annotation.dart';

part 'real_home.state.freezed.dart';

/// Real home state
@Freezed(copyWith: true)
final class RealHomeState with _$RealHomeState {
  /// Constructor
  const RealHomeState({
    required this.surname,
    this.isLoading = false,
    this.isTodayEventsFilled = false,
  });

  /// Initial state
  factory RealHomeState.initial({
    bool isLoading = false,
    String surname = '',
    bool isTodayEventsFilled = false,
  }) => RealHomeState(
    isLoading: isLoading,
    surname: surname,
    isTodayEventsFilled: isTodayEventsFilled,
  );

  /// Is loading
  @override
  final bool isLoading;

  /// Surname
  @override
  final String surname;

  /// Is today events filled
  @override
  final bool isTodayEventsFilled;
}
