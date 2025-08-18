import 'package:flutter/material.dart';
import 'package:starter_kit/domain/entities/testimonial.entity.dart';

/// Widget to display a testimonial card
class TestimonialCard extends StatelessWidget {
  /// Constructor
  const TestimonialCard({required this.testimonial, super.key});

  /// The testimonial to display
  final Testimonial testimonial;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.grey[50],
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.pink[100]!),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // Header with emoji and author
          Row(
            children: <Widget>[
              Text(testimonial.emoji, style: const TextStyle(fontSize: 24)),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  testimonial.author,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.pink[700],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          // Quote
          Text(
            testimonial.quote,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.black87,
              height: 1.5,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(height: 12),
          // Source and year
          Text(
            '${testimonial.source} (${testimonial.year})',
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey[500],
              fontStyle: FontStyle.italic,
            ),
          ),
        ],
      ),
    );
  }
}
