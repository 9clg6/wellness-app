import 'package:welly/data/datasources/local/user.local.data_source.dart';
import 'package:welly/data/model/local/onboarding_answers.local.model.dart';
import 'package:welly/data/model/local/user.local.model.dart';
import 'package:welly/data/storages/user_preferences.storage.dart';

/// User local data source impl
final class UserLocalDatasourceImpl implements UserLocalDataSource {
  /// Constructor
  UserLocalDatasourceImpl({required UserPreferencesStorage userPreferences})
    : _userPreferences = userPreferences;

  final UserPreferencesStorage _userPreferences;

  @override
  Future<void> setOnBoardingAsSeen() async {
    return _userPreferences.setOnboardingCompleted();
  }

  @override
  Future<bool> isOnboardingCompleted() async {
    return _userPreferences.isOnboardingCompleted();
  }

  @override
  Future<void> setOnboardingCompleted() async {
    return _userPreferences.setOnboardingCompleted();
  }

  @override
  Future<void> resetOnboarding() async {
    return _userPreferences.resetOnboarding();
  }

  @override
  Future<void> saveOnboardingAnswers(
    OnboardingAnswersLocalModel answers,
  ) async {
    return _userPreferences.saveOnboardingAnswers(answers);
  }

  @override
  Future<OnboardingAnswersLocalModel?> getOnboardingAnswers() async {
    return _userPreferences.getOnboardingAnswers();
  }

  @override
  Future<void> saveUser(UserLocalModel user) async {
    return _userPreferences.saveUser(user);
  }

  @override
  Future<UserLocalModel?> getUser() async {
    return _userPreferences.getUser();
  }
}
