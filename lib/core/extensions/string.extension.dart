/// String extension
extension StringExtension on String {
  /// Capitalize
  String get capitalize => this[0].toUpperCase() + substring(1);
}
