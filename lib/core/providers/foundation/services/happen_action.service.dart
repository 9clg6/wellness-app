import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:starter_kit/core/extensions/date.extension.dart';
import 'package:starter_kit/core/providers/foundation/services/ai.service.dart';
import 'package:starter_kit/domain/entities/ai_analysis.entity.dart';
import 'package:starter_kit/domain/entities/daily_happen_action.entity.dart';
import 'package:starter_kit/domain/entities/happen_action.entity.dart';
import 'package:starter_kit/domain/usecases/clear_happen_actions.usecase.dart';
import 'package:starter_kit/domain/usecases/delete_happen_action_by_date.usecase.dart';
import 'package:starter_kit/domain/usecases/save_happen_action.usecase.dart';
import 'package:starter_kit/domain/usecases/save_happen_actions.usecase.dart';

/// Service to manage daily happen actions with persistence
class HappenActionService extends StateNotifier<List<DailyHappenActionEntity>> {
  /// Constructor
  HappenActionService({
    required SaveHappenActionUseCase saveHappenActionUseCase,
    required SaveHappenActionsUseCase saveHappenActionsUseCase,
    required ClearHappenActionsUseCase clearHappenActionsUseCase,
    required DeleteHappenActionByDateUseCase deleteHappenActionByDateUseCase,
    required AiService aiService,
  }) : _saveHappenActionUseCase = saveHappenActionUseCase,
       _saveHappenActionsUseCase = saveHappenActionsUseCase,
       _clearHappenActionsUseCase = clearHappenActionsUseCase,
       _deleteHappenActionByDateUseCase = deleteHappenActionByDateUseCase,
       _aiService = aiService,
       super(<DailyHappenActionEntity>[]);

  /// Use cases
  final SaveHappenActionUseCase _saveHappenActionUseCase;
  final SaveHappenActionsUseCase _saveHappenActionsUseCase;
  final ClearHappenActionsUseCase _clearHappenActionsUseCase;
  final DeleteHappenActionByDateUseCase _deleteHappenActionByDateUseCase;
  final AiService _aiService;

  /// Is today events filled
  bool isTodayEventsFilled = false;

  /// Get entries (for backward compatibility)
  List<DailyHappenActionEntity> get entries => state;

  /// Get today's daily happen action
  DailyHappenActionEntity? get todayDailyHappenAction {
    final DateTime today = DateTime.now();
    return state
        .where((DailyHappenActionEntity daily) => daily.date.isSameDate(today))
        .firstOrNull;
  }

  /// Get today's entry
  List<HappenActionEntity> get todayEntry =>
      todayDailyHappenAction?.happenActions ?? <HappenActionEntity>[];

  /// Load happen actions from storage
  Future<void> init() async {
    try {
      // final List<DailyHappenActionEntity> loadedActions =
      //     await _getHappenActionsUseCase.invoke();
      state = _loadMockData();
    } on Exception catch (_) {
      state = <DailyHappenActionEntity>[];
    }
  }

  /// Load mock data for development/testing
  List<DailyHappenActionEntity> _loadMockData() {
    return <DailyHappenActionEntity>[
      // Mock data - Day 1
      DailyHappenActionEntity.create(
        date: DateTime.now().subtract(const Duration(days: 1)),
        first: const HappenActionEntity(
          happen: "J'ai reçu un compliment de mon manager sur mon travail",
          action: "J'ai pris le temps de bien préparer ma présentation",
        ),
        second: const HappenActionEntity(
          happen: "J'ai terminé ma séance de sport sans abandonner",
          action:
              "J'ai écouté une musique motivante et j'ai pensé à mes objectifs",
        ),
        third: const HappenActionEntity(
          happen: "J'ai eu une conversation agréable avec un ami",
          action:
              "J'ai pris l'initiative de l'appeler pour prendre de ses nouvelles",
        ),
      ),

      // Mock data - Day 2
      DailyHappenActionEntity.create(
        date: DateTime.now().subtract(const Duration(days: 2)),
        first: const HappenActionEntity(
          happen:
              'Ma candidature a été acceptée pour le poste de mes rêves dans une startup innovante',
          action:
              "J'ai passé 3 mois à me former sur les nouvelles technologies, j'ai créé un portfolio GitHub impressionnant, j'ai fait du networking lors d'événements tech, et j'ai préparé méticuleusement mes entretiens en étudiant l'entreprise",
        ),
        second: const HappenActionEntity(
          happen: "J'ai évité une dispute avec mon colocataire",
          action:
              "J'ai gardé le silence au lieu de répondre quand il était de mauvaise humeur",
        ),
        third: const HappenActionEntity(
          happen: "J'ai réussi à me lever tôt sans appuyer sur snooze",
          action:
              "J'ai mis mon réveil loin du lit et j'ai préparé mes affaires la veille",
        ),
      ),

      // Mock data - Day 3
      DailyHappenActionEntity.create(
        date: DateTime.now().subtract(const Duration(days: 3)),
        first: const HappenActionEntity(
          happen:
              'Mon projet perso a reçu 100 étoiles sur GitHub cette semaine',
          action:
              "J'ai partagé le projet sur Twitter et LinkedIn, j'ai répondu à tous les commentaires, et j'ai ajouté de la documentation détaillée",
        ),
        second: const HappenActionEntity(
          happen:
              "J'ai finalement réussi à perdre 3 kilos après des mois d'efforts, mais je me sens épuisé",
          action:
              "J'ai suivi un régime strict, je me suis entraîné 5 fois par semaine, j'ai arrêté de manger tard le soir, j'ai bu plus d'eau, mais j'ai aussi sacrifié mes sorties sociales et je dors moins bien",
        ),
        third: const HappenActionEntity(
          happen: "J'ai aidé un collègue à résoudre un problème technique",
          action:
              "J'ai pris le temps d'écouter son problème et j'ai partagé mes connaissances",
        ),
      ),

      // Mock data - Day 4
      DailyHappenActionEntity.create(
        date: DateTime.now().subtract(const Duration(days: 4)),
        first: const HappenActionEntity(
          happen: "Mon meilleur ami m'a dit qu'il était fier de moi",
          action:
              "J'ai été honnête avec lui sur mes difficultés et j'ai accepté son aide",
        ),
        second: const HappenActionEntity(
          happen:
              "J'ai réussi à économiser assez d'argent pour partir en vacances",
          action:
              "J'ai réduit mes sorties au restaurant, j'ai annulé quelques abonnements inutiles, j'ai vendu des objets que je n'utilisais plus sur Le Bon Coin, et j'ai trouvé un petit boulot le weekend",
        ),
        third: const HappenActionEntity(
          happen: "J'ai évité de me faire virer grâce à une explication rapide",
          action:
              "Quand mon patron m'a demandé pourquoi j'avais raté la deadline, j'ai admis mon erreur et proposé une solution immédiate",
        ),
      ),

      // Mock data - Day 5
      DailyHappenActionEntity.create(
        date: DateTime.now().subtract(const Duration(days: 5)),
        first: const HappenActionEntity(
          happen:
              "J'ai gagné le premier prix d'un concours de photographie local, ce qui m'a donné confiance en mon art",
          action:
              "J'ai passé des heures à étudier la composition et la lumière, j'ai fait plus de 200 photos pour trouver LA bonne, j'ai lu des livres sur la photographie, j'ai demandé des conseils à des photographes expérimentés sur Instagram, et j'ai pris des risques créatifs que je n'aurais jamais pris avant",
        ),
        second: const HappenActionEntity(
          happen: "J'ai enfin réussi à réparer ma voiture moi-même",
          action:
              "J'ai regardé des tutoriels YouTube et j'ai acheté les outils nécessaires",
        ),
        third: const HappenActionEntity(
          happen:
              "J'ai eu le courage de dire non à une demande qui ne me convenait pas",
          action:
              "J'ai réfléchi à mes priorités et j'ai communiqué mes limites avec respect",
        ),
      ),
    ];
  }

  /// Add entry to today's daily happen action
  Future<void> addEntry({
    required String happen,
    required String action,
    int? index,
  }) async {
    final DateTime today = DateTime.now();
    final DailyHappenActionEntity? existingToday = state
        .where((DailyHappenActionEntity daily) => daily.date.isSameDate(today))
        .firstOrNull;

    final HappenActionEntity newHappenAction = HappenActionEntity(
      happen: happen,
      action: action,
    );

    DailyHappenActionEntity updatedToday;
    if (existingToday != null) {
      // Update existing today's entry
      final int targetIndex = index ?? existingToday.happenActions.length;
      updatedToday = existingToday.updateHappenAction(
        targetIndex,
        newHappenAction,
      );

      // Replace in state
      state = state
          .map(
            (DailyHappenActionEntity daily) =>
                daily.date.isSameDate(today) ? updatedToday : daily,
          )
          .toList();
    } else {
      // Create new today's entry
      updatedToday = DailyHappenActionEntity.create(
        date: today,
        first: index == 0
            ? newHappenAction
            : const HappenActionEntity(happen: '', action: ''),
        second: index == 1
            ? newHappenAction
            : const HappenActionEntity(happen: '', action: ''),
        third: index == 2
            ? newHappenAction
            : const HappenActionEntity(happen: '', action: ''),
      );

      state = <DailyHappenActionEntity>[...state, updatedToday];
    }

    try {
      await _saveHappenActionUseCase.invoke(updatedToday);
    } catch (e) {
      // Handle error - could show a snackbar or log
      rethrow;
    }
  }

  /// Update specific happen action in today's entry
  Future<void> updateTodayHappenAction(
    int index,
    HappenActionEntity happenAction,
  ) async {
    final DateTime today = DateTime.now();
    final DailyHappenActionEntity? existingToday = state
        .where((DailyHappenActionEntity daily) => daily.date.isSameDate(today))
        .firstOrNull;

    if (existingToday != null) {
      final DailyHappenActionEntity updatedToday = existingToday
          .updateHappenAction(index, happenAction);
      state = state
          .map(
            (DailyHappenActionEntity daily) =>
                daily.date.isSameDate(today) ? updatedToday : daily,
          )
          .toList();

      try {
        await _saveHappenActionUseCase.invoke(updatedToday);
      } catch (e) {
        rethrow;
      }
    }
  }

  /// Clear entries
  Future<void> clearEntries() async {
    try {
      await _clearHappenActionsUseCase.invoke();
      state = <DailyHappenActionEntity>[];
    } catch (e) {
      // Handle error
      rethrow;
    }
  }

  /// Delete entry by date
  Future<void> deleteEntryByDate(DateTime date) async {
    try {
      await _deleteHappenActionByDateUseCase.invoke(date);
      state = state
          .where(
            (DailyHappenActionEntity entry) => !entry.date.isSameDate(date),
          )
          .toList();
    } catch (e) {
      // Handle error
      rethrow;
    }
  }

  /// Save all entries (useful for batch operations)
  Future<void> saveAllEntries() async {
    try {
      await _saveHappenActionsUseCase.invoke(state);
    } catch (e) {
      // Handle error
      rethrow;
    }
  }

  /// Analyze with ai
  Future<AIAnalysisEntity> analyzeWithAi() async {
    final AIAnalysisEntity result = await _aiService.analyzeWithAI(state);
    return result;
  }
}
