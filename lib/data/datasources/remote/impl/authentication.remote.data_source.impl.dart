import 'dart:async';

import 'package:dio/dio.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:welly/data/bodies/login.param.dart';
import 'package:welly/data/datasources/remote/authentication.remote.data_source.dart';
import 'package:welly/data/endpoint/authentication.endpoint.dart';
import 'package:welly/data/model/remote/auth.remote.model.dart';
import 'package:welly/domain/params/login.param.dart';

/// Authentication Data Source
final class AuthenticationRemoteDataSourceImpl
    implements AuthenticationRemoteDataSource {
  /// Authentication Data Source constructor
  AuthenticationRemoteDataSourceImpl({required AuthenticationEndpoint endpoint})
    : _endpoint = endpoint;

  /// Endpoint
  final AuthenticationEndpoint _endpoint;

  /// Login
  @override
  Future<AuthRemoteModel> login(LoginParam body) async {
    AuthRemoteModel? response;
    try {
      final String jwtToken = await _endpoint.login(
        LoginBody.fromUseCaseParams(body),
      );
      response = AuthRemoteModel(token: jwtToken.replaceAll('"', ''));
    } on DioException catch (exception, s) {
      unawaited(
        FirebaseCrashlytics.instance.recordError(
          exception,
          s,
          reason: exception.response?.data,
        ),
      );
      final int? statusCode = exception.response?.statusCode;
      switch (statusCode) {
        default:
          rethrow;
      }
    }

    return response;
  }

  /// Forget password
  @override
  Future<void> forgetPassword(LoginParam body) async {
    throw UnimplementedError();
  }
}
