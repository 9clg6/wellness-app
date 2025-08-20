import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
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
    this.showOverlay = false,
    this.messageStep = 0,
    this.rectAnimation,
    this.radiusAnimation,
  });

  /// Initial Constructor
  HomeState.initial({
    this.isLoading = true,
    this.showSecondField = false,
    this.showValidationButton = false,
    this.topMotivationText = LocaleKeys.positiveMomentMessage3,
    this.step = 0,
    this.showOverlay = false,
    this.messageStep = 0,
    this.rectAnimation,
    this.radiusAnimation,
  });

  /// Total steps to complete a day
  final int totalSteps = 3;

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

  /// Whether the overlay is shown
  final bool showOverlay;

  /// Current message step (0, 1, 2)
  final int messageStep;

  /// Rectangle animation for overlay
  final Animation<RelativeRect>? rectAnimation;

  /// Radius animation for overlay
  final Animation<double>? radiusAnimation;

  /// Remaining cards to fill including the current one
  int get remainingCards {
    final int remaining = totalSteps - step;
    return remaining <= 0 ? 0 : remaining;
  }

  @override
  List<Object?> get props => <Object?>[
    isLoading,
    showSecondField,
    showValidationButton,
    topMotivationText,
    step,
    showOverlay,
    messageStep,
    rectAnimation,
    radiusAnimation,
  ];
}
