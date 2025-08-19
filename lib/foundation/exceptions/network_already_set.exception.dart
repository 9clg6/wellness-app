/// TEMPLATE Exception thrown when a custom exception is thrown
final class CustomException implements Exception {
  /// Constructor
  const CustomException(this.message);

  /// Message
  final String message;
}
