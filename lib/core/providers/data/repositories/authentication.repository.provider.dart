import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:welly/core/providers/data/datasources/local/authentication.local.data_source.provider.dart';
import 'package:welly/core/providers/data/datasources/remote/authentication.remote.data_source.provider.dart';
import 'package:welly/data/datasources/local/authentication.local.data_source.dart';
import 'package:welly/data/datasources/remote/authentication.remote.data_source.dart';
import 'package:welly/data/repositories/authentication.repository.impl.dart';
import 'package:welly/domain/repositories/authentication.repository.dart';

part 'authentication.repository.provider.g.dart';

/// Authentication Repository provider
@riverpod
Future<AuthenticationRepository> authenticationRepository(Ref ref) async {
  final AuthenticationRemoteDataSource remoteDataSource = await ref.watch(
    authenticationRemoteDataSourceProvider.future,
  );
  final AuthenticationLocalDataSource localDataSource = await ref.watch(
    authenticationLocalDataSourceProvider.future,
  );

  return AuthenticationRepositoryImpl(
    remoteDataSource: remoteDataSource,
    localDataSource: localDataSource,
  );
}
