import 'package:freezed_annotation/freezed_annotation.dart';

part 'authentication.state.freezed.dart';

/// Authentication State
@freezed
abstract class AuthenticationState with _$AuthenticationState {
  /// Constructor
  const factory AuthenticationState({
    required bool loading,
    required bool isPasswordVisible,
  }) = _AuthenticationState;

  /// Initial state
  factory AuthenticationState.initial({
    bool loading = false,
    bool isPasswordVisible = false,
  }) => AuthenticationState(
    loading: loading,
    isPasswordVisible: isPasswordVisible,
  );
}
