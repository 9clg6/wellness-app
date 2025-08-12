import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';
import 'package:starter_kit/core/localization/generated/locale_keys.g.dart';

part 'home.state.g.dart';

/// Home state
@CopyWith()
class HomeState with EquatableMixin {
  /// Constructor
  HomeState({
    required this.isLoading,
    required this.showSecondField,
    required this.showValidationButton,
    required this.topMotivationText,
    this.step = 0,
  });

  /// Initial Constructor
  HomeState.initial({
    this.isLoading = true,
    this.showSecondField = false,
    this.showValidationButton = false,
    this.topMotivationText = LocaleKeys.positiveMomentMessage3,
    this.step = 0,
  });

  /// Whether the home screen is loading
  final bool isLoading;

  /// Whether the second field should be shown
  final bool showSecondField;

  /// Whether the validation button should be shown
  final bool showValidationButton;

  /// Top motivation text
  final String topMotivationText;

  /// Step
  final int step;

  @override
  List<Object?> get props => <Object?>[
    isLoading,
    showSecondField,
    showValidationButton,
    topMotivationText,
    step,
  ];
}
