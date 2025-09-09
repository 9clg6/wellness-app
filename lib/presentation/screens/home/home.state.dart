import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:starter_kit/core/localization/generated/locale_keys.g.dart';

part 'home.state.freezed.dart';

/// Home state
@Freezed(copyWith: true)
class HomeState with _$HomeState {
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
  @override
  final int totalSteps = 3;

  /// Whether the home screen is loading
  @override
  final bool isLoading;

  /// Whether the second field should be shown
  @override
  final bool showSecondField;

  /// Whether the validation button should be shown
  @override
  final bool showValidationButton;

  /// Top motivation text
  @override
  final String topMotivationText;

  /// Step
  @override
  final int step;

  /// Whether the overlay is shown
  @override
  final bool showOverlay;

  /// Current message step (0, 1, 2)
  @override
  final int messageStep;

  /// Rectangle animation for overlay
  @override
  final Animation<RelativeRect>? rectAnimation;

  /// Radius animation for overlay
  @override
  final Animation<double>? radiusAnimation;

  /// Remaining cards to fill including the current one
  int get remainingCards {
    final int remaining = totalSteps - step;
    return remaining <= 0 ? 0 : remaining;
  }
}
