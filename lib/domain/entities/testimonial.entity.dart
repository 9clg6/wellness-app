/// Class to represent a testimonial
class Testimonial {
  /// Constructor
  const Testimonial({
    required this.quote,
    required this.author,
    required this.source,
    required this.year,
    required this.emoji,
  });

  /// Quote or study result
  final String quote;

  /// Study author(s)
  final String author;

  /// Publication source/journal
  final String source;

  /// Publication year
  final int year;

  /// Representative emoji
  final String emoji;
}
