import 'package:dio/dio.dart';
import 'package:welly/core/providers/foundation/services/navigation.service.dart';
import 'package:welly/data/clients/dio.client.dart';
import 'package:welly/domain/entities/auth.entity.dart';
import 'package:welly/domain/usecases/get_auth.use_case.dart';
import 'package:welly/foundation/interfaces/results.usecases.dart';

///
/// [HeaderInterceptor]
///
class HeaderInterceptor {
  /// HeaderInterceptor constructor
  HeaderInterceptor({
    required DioClient dioClient,
    required GetAuthUseCase getAuthUseCase,
    required NavigationService navigationService,
  }) : _dioClient = dioClient,
       _getAuthUseCase = getAuthUseCase,
       _navigationService = navigationService {
    _registerInterceptor();
  }

  final DioClient _dioClient;
  final GetAuthUseCase _getAuthUseCase;
  final NavigationService _navigationService;

  void _registerInterceptor() {
    _dioClient.interceptors.add(
      QueuedInterceptorsWrapper(
        onRequest:
            (
              RequestOptions requestOptions,
              RequestInterceptorHandler handler,
            ) async {
              requestOptions.headers.addAll(<String, dynamic>{
                'Content-Type': 'application/json',
                'Accept': 'application/json',
              });

              final ResultState<AuthEntity?> currentAuth = await _getAuthUseCase
                  .execute();

              if (currentAuth.status == StateStatus.success) {
                final AuthEntity? authEntity = currentAuth.data;
                if (authEntity != null && authEntity.token != null) {
                  requestOptions.headers.addAll(<String, dynamic>{
                    'Authorization': 'Bearer ${authEntity.token}',
                  });
                }
              } else {
                _navigationService.navigateToSignInPage();
              }

              handler.next(requestOptions);
              return;
            },
      ),
    );
  }
}
