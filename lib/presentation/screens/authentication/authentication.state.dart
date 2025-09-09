import 'package:freezed_annotation/freezed_annotation.dart';

part 'authentication.state.freezed.dart';

/// Authentication State
@Freezed(copyWith: true)
final class AuthenticationState with _$AuthenticationState {
  /// constructor
  AuthenticationState({required this.loading, this.isPasswordVisible = false});

  /// initial
  factory AuthenticationState.initial() {
    return AuthenticationState(loading: false);
  }

  /// loading
  @override
  final bool loading;

  /// is password visible
  @override
  final bool isPasswordVisible;
}
