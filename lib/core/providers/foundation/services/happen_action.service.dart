import 'package:starter_kit/domain/entities/happen_action.entity.dart';

/// Service pour gérer les entrées du jour et la streak
class HappenActionService {
  /// Constructor
  HappenActionService() {
    _entries = List<HappenActionEntity>.from(
      List<HappenActionEntity>.generate(
        3,
        (int index) => HappenActionEntity(
          happen: 'Test $index',
          action: 'Test $index',
          date: DateTime.now(),
        ),
      ),
    );
  }

  /// Entrées du jour (en mémoire)
  late final List<HappenActionEntity> _entries;

  /// Streak de jours (en mémoire)
  int _streakDays = 1;

  /// Récupère la liste des entrées du jour
  List<HappenActionEntity> get entries =>
      List<HappenActionEntity>.unmodifiable(_entries);

  /// Récupère la streak courante
  int get streakDays => _streakDays;

  /// Ajoute une entrée
  void addEntry({required String happen, required String action}) {
    _entries.add(
      HappenActionEntity(happen: happen, action: action, date: DateTime.now()),
    );
  }

  /// Vide les entrées du jour
  void clearEntries() => _entries.clear();

  /// Incrémente la streak (naïf, sans persistance)
  void incrementStreak() => _streakDays = _streakDays + 1;
}
