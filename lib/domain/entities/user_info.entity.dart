import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';

part 'user_info.entity.g.dart';

/// User information collected during onboarding
@CopyWith()
class UserInfoEntity with EquatableMixin {
  /// Constructor
  const UserInfoEntity({
    this.firstName,
    this.age,
    this.goalIndex,
    this.completedAt,
    this.onboardingAnswers,
  });

  /// First name
  final String? firstName;

  /// Age
  final int? age;

  /// Goal index
  final int? goalIndex;

  /// When onboarding was completed
  final DateTime? completedAt;

  /// Onboarding answers
  final Map<String, dynamic>? onboardingAnswers;

  @override
  List<Object?> get props => <Object?>[
    firstName,
    age,
    goalIndex,
    completedAt,
    onboardingAnswers,
  ];
}
