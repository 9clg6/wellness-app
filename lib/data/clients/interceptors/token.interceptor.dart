// ignore_for_file: lines_longer_than_80_chars clc

import 'package:dio/dio.dart';
import 'package:welly/data/clients/dio.client.dart';
import 'package:welly/data/clients/extra_client.dart';

/// [TokenInterceptor]
class TokenInterceptor {
  /// Constructor
  TokenInterceptor({required DioClient dioClient}) : _dioClient = dioClient {
    _registerInterceptor();
  }

  final DioClient _dioClient;

  void _registerInterceptor() {
    _dioClient.interceptors.add(
      QueuedInterceptorsWrapper(
        onRequest:
            (
              RequestOptions requestOptions,
              RequestInterceptorHandler handler,
            ) async {
              if (!requestOptions.extra.containsKey(
                ExtraClient.removeAuthToken,
              )) {
                requestOptions.headers.addAll(<String, dynamic>{
                  'Authorization':
                      'Bearer ${const String.fromEnvironment('OPENAI_API_KEY')}',
                });
                handler.next(requestOptions);
                return;
              } else {
                // If removeAuthToken is present, continue without token
                handler.next(requestOptions);
                return;
              }
            },
      ),
    );
  }
}
