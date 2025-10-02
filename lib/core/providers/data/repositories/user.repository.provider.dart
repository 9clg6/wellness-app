import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:welly/core/providers/data/datasources/local/user.local.data_source.provider.dart';
import 'package:welly/core/providers/data/datasources/remote/user.remote.data_source.provider.dart';
import 'package:welly/data/datasources/local/user.local.data_source.dart';
import 'package:welly/data/datasources/remote/user.remote.data_source.dart';
import 'package:welly/data/repositories/user.repository.impl.dart';
import 'package:welly/domain/repositories/user.repository.dart';

part 'user.repository.provider.g.dart';

/// User repository provider
@riverpod
Future<UserRepository> userRepository(Ref ref) async {
  final UserRemoteDataSource userRemoteDataSource = await ref.watch(
    userRemoteDataSourceProvider.future,
  );

  final UserLocalDataSource userLocalDataSource = ref.watch(
    userLocalDataSourceProvider,
  );

  return UserRepositoryImpl(
    userRemoteDataSource: userRemoteDataSource,
    userLocalDataSource: userLocalDataSource,
  );
}
