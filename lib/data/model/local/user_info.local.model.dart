import 'package:json_annotation/json_annotation.dart';
import 'package:starter_kit/domain/entities/user_info.entity.dart';

part 'user_info.local.model.g.dart';

/// Local model for user info with JSON serialization
@JsonSerializable()
class UserInfoLocalModel {
  /// Constructor
  const UserInfoLocalModel({
    this.firstName,
    this.age,
    this.goalIndex,
    this.completedAt,
    this.onboardingAnswers,
  });

  /// From JSON
  factory UserInfoLocalModel.fromJson(Map<String, dynamic> json) =>
      _$UserInfoLocalModelFromJson(json);

  /// To JSON
  Map<String, dynamic> toJson() => _$UserInfoLocalModelToJson(this);

  /// Convert to domain entity
  UserInfoEntity toEntity() {
    return UserInfoEntity(
      firstName: firstName,
      age: age,
      goalIndex: goalIndex,
      completedAt: completedAt != null ? DateTime.parse(completedAt!) : null,
      onboardingAnswers: onboardingAnswers,
    );
  }

  /// First name
  final String? firstName;

  /// Age
  final int? age;

  /// Goal index
  final int? goalIndex;

  /// When onboarding was completed
  final String? completedAt;

  /// Onboarding answers
  final Map<String, dynamic>? onboardingAnswers;
}
