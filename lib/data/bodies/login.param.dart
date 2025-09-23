import 'package:json_annotation/json_annotation.dart';
import 'package:welly/domain/params/login.param.dart';

part 'login.param.g.dart';

/// Login Param
@JsonSerializable(fieldRename: FieldRename.snake)
final class LoginBody {
  /// Login Param constructor
  LoginBody({required this.username, required this.password});

  /// fromUseCaseParams
  factory LoginBody.fromUseCaseParams(LoginParam params) {
    return LoginBody(username: params.username, password: params.password);
  }

  /// Email
  final String username;

  /// Password
  final String password;

  /// From json
  static LoginBody fromJson(Map<String, dynamic> json) =>
      _$LoginBodyFromJson(json);

  /// To json
  Map<String, dynamic> toJson() => _$LoginBodyToJson(this);
}
