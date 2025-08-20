import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';

part 'real_home.state.g.dart';

/// Real home state
@CopyWith()
final class RealHomeState with EquatableMixin {
  /// Constructor
  const RealHomeState({required this.surname, this.isLoading = false});

  /// Initial state
  factory RealHomeState.initial({
    bool isLoading = false,
    String surname = '',
  }) => RealHomeState(isLoading: isLoading, surname: surname);

  /// Is loading
  final bool isLoading;

  /// Surname
  final String surname;

  @override
  List<Object?> get props => <Object?>[isLoading, surname];
}
