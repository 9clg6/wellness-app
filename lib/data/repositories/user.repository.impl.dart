import 'package:starter_kit/data/datasources/local/user.local.data_source.dart';
import 'package:starter_kit/data/datasources/remote/user.remote.data_source.dart';
import 'package:starter_kit/data/model/local/onboarding_answers.local.model.dart';
import 'package:starter_kit/data/model/local/user_info.local.model.dart';
import 'package:starter_kit/data/model/remote/user.remote.model.dart';
import 'package:starter_kit/domain/entities/onboarding_answers.dart';
import 'package:starter_kit/domain/entities/user.entity.dart';
import 'package:starter_kit/domain/entities/user_info.entity.dart';
import 'package:starter_kit/domain/repositories/user.repository.dart';

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
    final List<UserRemoteModel> userRemoteModels = await _userRemoteDataSource
        .getUser();

    return UserEntity.fromRemote(userRemoteModels.first);
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
  Future<UserInfoEntity?> getUserInfo() async {
    final UserInfoLocalModel? localModel = await _userLocalDataSource
        .getUserInfo();
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
  Future<void> saveUserInfo(UserInfoEntity userInfo) async {
    final UserInfoLocalModel localModel = UserInfoLocalModel(
      firstName: userInfo.firstName,
      age: userInfo.age,
      goalIndex: userInfo.goalIndex,
      completedAt: userInfo.completedAt?.toIso8601String(),
      onboardingAnswers: userInfo.onboardingAnswers,
    );
    return _userLocalDataSource.saveUserInfo(localModel);
  }

  @override
  Future<void> setOnboardingCompleted() async {
    return _userLocalDataSource.setOnboardingCompleted();
  }
}
