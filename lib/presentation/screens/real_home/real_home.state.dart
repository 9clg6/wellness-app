import 'package:freezed_annotation/freezed_annotation.dart';

part 'real_home.state.freezed.dart';

/// Real home state
@Freezed(copyWith: true)
final class RealHomeState with _$RealHomeState {
  /// Constructor
  const RealHomeState({required this.surname, this.isLoading = false});

  /// Initial state
  factory RealHomeState.initial({
    bool isLoading = false,
    String surname = '',
  }) => RealHomeState(isLoading: isLoading, surname: surname);

  /// Is loading
  @override
  final bool isLoading;

  /// Surname
  @override
  final String surname;
}
