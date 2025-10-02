import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:welly/core/providers/data/repositories/authentication.repository.provider.dart';
import 'package:welly/domain/repositories/authentication.repository.dart';
import 'package:welly/domain/usecases/logout.use_case.dart';

part 'logout.use_case.provider.g.dart';

/// Logout Use Case provider
@riverpod
Future<LogoutUseCase> logoutUseCase(Ref ref) async {
  final AuthenticationRepository repository = await ref.watch(
    authenticationRepositoryProvider.future,
  );
  return LogoutUseCase(repository: repository);
}
