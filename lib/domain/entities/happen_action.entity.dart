import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';

/// Happen action entity
@CopyWith()
final class HappenActionEntity with EquatableMixin {
  /// Constructor
  const HappenActionEntity({
    required this.happen,
    required this.action,
    required this.date,
  });

  /// Happen
  final String happen;

  /// Action
  final String action;

  /// Date
  final DateTime date;

  @override
  List<Object?> get props => <Object?>[happen, action, date];
}
