import 'package:welly/data/datasources/local/user.local.data_source.dart';
import 'package:welly/data/datasources/remote/user.remote.data_source.dart';
import 'package:welly/data/model/local/onboarding_answers.local.model.dart';
import 'package:welly/data/model/local/user.local.model.dart';
import 'package:welly/data/model/remote/user.remote.model.dart';
import 'package:welly/domain/entities/onboarding_answers.dart';
import 'package:welly/domain/entities/user.entity.dart';
import 'package:welly/domain/repositories/user.repository.dart';

/// User Repository
final class UserRepositoryImpl extends UserRepository {
  /// User Repository constructor
  UserRepositoryImpl({
    required UserRemoteDataSource userRemoteDataSource,
    required UserLocalDataSource userLocalDataSource,
  }) : _userRemoteDataSource = userRemoteDataSource,
       _userLocalDataSource = userLocalDataSource;

  /// remote data source
  final UserRemoteDataSource _userRemoteDataSource;

  /// local data source
  final UserLocalDataSource _userLocalDataSource;

  @override
  Future<UserEntity> getUser() async {
    final UserRemoteModel userRemoteModel = await _userRemoteDataSource
        .getUser();

    return UserEntity.fromRemote(userRemoteModel);
  }

  @override
  Future<void> setOnBoardingAsSeen() {
    return _userLocalDataSource.setOnBoardingAsSeen();
  }

  @override
  Future<OnboardingAnswers?> getOnboardingAnswers() async {
    final OnboardingAnswersLocalModel? localModel = await _userLocalDataSource
        .getOnboardingAnswers();
    return localModel?.toEntity();
  }

  @override
  Future<UserEntity?> getLocalUser() async {
    final UserLocalModel? localModel = await _userLocalDataSource.getUser();
    return localModel?.toEntity();
  }

  @override
  Future<bool> isOnboardingCompleted() async {
    return _userLocalDataSource.isOnboardingCompleted();
  }

  @override
  Future<void> resetOnboarding() async {
    return _userLocalDataSource.resetOnboarding();
  }

  @override
  Future<void> saveOnboardingAnswers(OnboardingAnswers answers) async {
    final OnboardingAnswersLocalModel localModel = OnboardingAnswersLocalModel(
      frequencyIndex: answers.frequencyIndex,
      discoverySourceIndex: answers.discoverySourceIndex,
      favoriteThemeIndex: answers.favoriteThemeIndex,
      practiceDurationIndex: answers.practiceDurationIndex,
      serenityScore: answers.serenityScore,
      firstName: answers.firstName,
      age: answers.age,
      goalIndex: answers.goalIndex,
    );
    return _userLocalDataSource.saveOnboardingAnswers(localModel);
  }

  @override
  Future<void> saveUser(UserEntity user) async {
    return _userLocalDataSource.saveUser(UserLocalModel.fromEntity(user));
  }

  @override
  Future<void> setOnboardingCompleted() async {
    return _userLocalDataSource.setOnboardingCompleted();
  }
}
