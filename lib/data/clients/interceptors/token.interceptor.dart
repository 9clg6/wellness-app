import 'package:dio/dio.dart';
import 'package:starter_kit/data/clients/dio.client.dart';
import 'package:starter_kit/data/clients/extra_client.dart';
import 'package:starter_kit/domain/entities/auth.entity.dart';
import 'package:starter_kit/domain/usecases/get_auth.use_case.dart';
import 'package:starter_kit/foundation/interfaces/results.usecases.dart';

/// [TokenInterceptor]
class TokenInterceptor {
  /// Constructor
  TokenInterceptor({
    required DioClient dioClient,
    required GetAuthUseCase getAuthUseCase,
  }) : _dioClient = dioClient,
       _getAuthUseCase = getAuthUseCase {
    _registerInterceptor();
  }

  final DioClient _dioClient;
  final GetAuthUseCase _getAuthUseCase;

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
                final ResultState<AuthEntity?> localToken =
                    await _getAuthUseCase.execute();

                if (localToken.status == StateStatus.success) {
                  final AuthEntity? authEntity = localToken.data;
                  final String? token = authEntity?.token;
                  if (token == null) {
                    handler.next(requestOptions);
                    return;
                  }

                  requestOptions.headers.addAll(<String, dynamic>{
                    'Authorization': 'Bearer $token',
                  });
                  handler.next(requestOptions);
                  return;
                } else {
                  // If the status is not success, continue without token
                  handler.next(requestOptions);
                  return;
                }
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
