import 'dart:async';

import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:welly/core/providers/core/services/ai.service.provider.dart';
import 'package:welly/core/providers/core/services/happen_action.service.provider.dart';
import 'package:welly/core/providers/core/services/navigation.service.provider.dart';
import 'package:welly/core/providers/foundation/services/ai.service.dart';
import 'package:welly/core/providers/foundation/services/happen_action.service.dart';
import 'package:welly/domain/entities/ai_analysis.entity.dart';
import 'package:welly/presentation/screens/ai_analyze/ai_analyze.state.dart';

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
    final AiService aiService = await ref.watch(aiServiceProvider.future);
    if (aiService.lastReport != null) {
      return AiAnalyzeState.initial(report: aiService.lastReport!);
    }

    late final AIAnalysisEntity report;

    try {
      report = await happenActionService.analyzeWithAiAndSaveReport();
    } on Exception catch (e, s) {
      debugPrint(e.toString());
      unawaited(FirebaseCrashlytics.instance.recordError(e, s));
      rethrow;
    }

    return AiAnalyzeState.initial(report: report);
  }

  /// On tap quit
  void onTapQuit() {
    ref.read(navigationServiceProvider).navigateBack();
  }
}
