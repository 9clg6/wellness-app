import 'package:starter_kit/domain/entities/happen_action.entity.dart';

/// Service pour gérer les entrées du jour et la streak
class HappenActionService {
  /// Entries
  final List<HappenActionEntity> _entries = <HappenActionEntity>[];

  /// Get entries
  List<HappenActionEntity> get entries =>
      List<HappenActionEntity>.unmodifiable(_entries);

  /// Add entry
  void addEntry({required String happen, required String action}) {
    _entries.add(
      HappenActionEntity(happen: happen, action: action, date: DateTime.now()),
    );
  }

  /// Clear entries
  void clearEntries() => _entries.clear();
}
