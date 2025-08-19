import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:starter_kit/data/model/local/onboarding_answers.local.model.dart';
import 'package:starter_kit/data/model/local/user_info.local.model.dart';

/// User Preferences Storage
class UserPreferencesStorage {
  /// User Preferences Storage constructor
  UserPreferencesStorage();

  static const String _emailKey = 'user_email_key';
  static const String _onboardingCompletedKey = 'onboarding_completed';
  static const String _onboardingAnswersKey = 'onboarding_answers';
  static const String _userInfoKey = 'user_info';

  /// Get SharedPreferences instance
  Future<SharedPreferences> get _prefs async {
    return SharedPreferences.getInstance();
  }

  /// Save user email
  Future<void> saveUserEmail(String email) async {
    final SharedPreferences prefs = await _prefs;
    await prefs.setString(_emailKey, email);
  }

  /// Get user email
  Future<String?> getUserEmail() async {
    final SharedPreferences prefs = await _prefs;
    return prefs.getString(_emailKey);
  }

  /// Remove user email
  Future<void> removeUserEmail() async {
    final SharedPreferences prefs = await _prefs;
    await prefs.remove(_emailKey);
  }

  /// Check if user email exists
  Future<bool> hasUserEmail() async {
    final SharedPreferences prefs = await _prefs;
    return prefs.containsKey(_emailKey);
  }

  /// Check if onboarding is completed
  Future<bool> isOnboardingCompleted() async {
    final SharedPreferences prefs = await _prefs;
    return prefs.getBool(_onboardingCompletedKey) ?? false;
  }

  /// Mark onboarding as completed
  Future<void> setOnboardingCompleted() async {
    final SharedPreferences prefs = await _prefs;
    await prefs.setBool(_onboardingCompletedKey, true);
  }

  /// Reset onboarding status
  Future<void> resetOnboarding() async {
    final SharedPreferences prefs = await _prefs;
    await prefs.remove(_onboardingCompletedKey);
    await prefs.remove(_onboardingAnswersKey);
    await prefs.remove(_userInfoKey);
  }

  /// Save onboarding answers
  Future<void> saveOnboardingAnswers(
    OnboardingAnswersLocalModel localModel,
  ) async {
    final SharedPreferences prefs = await _prefs;
    final String answersJson = jsonEncode(localModel.toJson());
    await prefs.setString(_onboardingAnswersKey, answersJson);
  }

  /// Get onboarding answers
  Future<OnboardingAnswersLocalModel?> getOnboardingAnswers() async {
    try {
      final SharedPreferences prefs = await _prefs;
      final String? answersString = prefs.getString(_onboardingAnswersKey);
      if (answersString != null) {
        final Map<String, dynamic> answersMap =
            jsonDecode(answersString) as Map<String, dynamic>;
        return OnboardingAnswersLocalModel.fromJson(answersMap);
      }
    } on Exception catch (e) {
      debugPrint('Error getting onboarding answers: $e');
      rethrow;
    }
    return null;
  }

  /// Save user info after onboarding
  Future<void> saveUserInfo(UserInfoLocalModel localModel) async {
    final SharedPreferences prefs = await _prefs;
    final String userInfoJson = jsonEncode(localModel.toJson());
    await prefs.setString(_userInfoKey, userInfoJson);
  }

  /// Get user info
  Future<UserInfoLocalModel?> getUserInfo() async {
    try {
      final SharedPreferences prefs = await _prefs;
      final String? userInfoString = prefs.getString(_userInfoKey);

      if (userInfoString != null) {
        final Map<String, dynamic> userInfoMap =
            jsonDecode(userInfoString) as Map<String, dynamic>;

        return UserInfoLocalModel.fromJson(userInfoMap);
      }
    } on Exception catch (e) {
      debugPrint('Error getting user info: $e');
      rethrow;
    }
    return null;
  }
}
