import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:starter_kit/core/providers/core/services/happen_action.service.provider.dart';
import 'package:starter_kit/core/providers/core/services/navigation.service.provider.dart';
import 'package:starter_kit/core/providers/foundation/services/happen_action.service.dart';
import 'package:starter_kit/domain/entities/ai_analysis.entity.dart';
import 'package:starter_kit/presentation/screens/ai_analyze/ai_analyze.state.dart';

part 'ai_analyze.view_model.g.dart';

/// Ai analyze view model
@riverpod
final class AiAnalyze extends _$AiAnalyze {
  

  /// Constructor
  AiAnalyze();

  /// Build
  @override
  Future<AiAnalyzeState> build() async {
    final HappenActionService happenActionService = await ref.watch(
      happenActionServiceProvider.future,
    );
    late final AIAnalysisEntity report;

    try {
      report = await happenActionService.analyzeWithAi();
    } on Exception catch (e) {
      debugPrint(e.toString());
      rethrow;
    }

    return AiAnalyzeState.initial(report: report);
  }

  /// On tap quit
  void onTapQuit() {
    ref.read(navigationServiceProvider).navigateBack();
  }
}
