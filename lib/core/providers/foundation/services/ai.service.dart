// ignore_for_file: lines_longer_than_80_chars ntm

import 'package:starter_kit/data/bodies/analyze_with_ai_param.dart';
import 'package:starter_kit/domain/entities/ai_analysis.entity.dart';
import 'package:starter_kit/domain/entities/daily_happen_action.entity.dart';
import 'package:starter_kit/domain/usecases/analyze_with_ai.usecase.dart';

/// Service for AI analysis operations
final class AiService {
  /// Constructor
  AiService(this._analyzeWithAIUseCase);

  /// Version of the prompt
  static const int version = 7;

  /// Analyze with AI use case
  final AnalyzeWithAIUseCase _analyzeWithAIUseCase;

  /// Analyze with AI
  Future<AIAnalysisEntity> analyzeWithAI(
    List<DailyHappenActionEntity> events,
  ) async {
    return _analyzeWithAIUseCase.invoke(
      AnalyzeWithAIParam(
        prompt: PromptConfig(
          id: const String.fromEnvironment('PROMPT_ID'),
          variables: _formatEvents(events),
          version: version.toString(),
        ),
      ),
    );
  }

  Map<String, String> _formatEvents(List<DailyHappenActionEntity> events) {
    final StringBuffer buffer = StringBuffer();
    for (int i = 0; i < events.length; i++) {
      final DailyHappenActionEntity e = events[i];
      buffer
        ..writeln('Jour ${i + 1}:\n')
        ..writeln('- Chose positive 1: ${e.happenActions[0].happen}')
        ..writeln('- Action 1: ${e.happenActions[0].action}')
        ..writeln('\n')
        ..writeln('- Chose positive 2: ${e.happenActions[1].happen}')
        ..writeln('- Action 2: ${e.happenActions[1].action}')
        ..writeln('\n')
        ..writeln('- Chose positive 3: ${e.happenActions[2].happen}')
        ..writeln('- Action 3: ${e.happenActions[2].action}')
        ..writeln();
    }
    return <String, String>{
      'userevents':
          "Analyses les événements de l'utilisateur en suivant les instructions système et réponds **uniquement** en format JSON valide. Voici les événements: $buffer",
    };
  }
}
