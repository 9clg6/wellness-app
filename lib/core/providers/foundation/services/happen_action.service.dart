import 'package:starter_kit/domain/entities/happen_action.entity.dart';

/// Service pour gérer les entrées du jour et la streak
class HappenActionService {
  /// Entrées du jour (en mémoire)
  final List<HappenActionEntity> _entries = <HappenActionEntity>[];

  /// Streak de jours (en mémoire)
  int _streakDays = 1;

  /// Récupère la liste des entrées du jour
  List<HappenActionEntity> get entries =>
      List<HappenActionEntity>.unmodifiable(_entries);

  /// Récupère la streak courante
  int get streakDays => _streakDays;

  /// Ajoute une entrée
  void addEntry({required String happen, required String action}) {
    _entries.add(HappenActionEntity(happen: happen, action: action));
  }

  /// Vide les entrées du jour
  void clearEntries() => _entries.clear();

  /// Incrémente la streak (naïf, sans persistance)
  void incrementStreak() => _streakDays = _streakDays + 1;
}
