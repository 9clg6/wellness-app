import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:welly/core/localization/generated/locale_keys.g.dart';
import 'package:welly/domain/entities/happen_action.entity.dart';

/// Review card
class ReviewCard extends StatelessWidget {
  /// Constructor
  const ReviewCard({required this.entry, super.key});

  /// Entry
  final HappenActionEntity entry;

  /// Build
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.black.withValues(alpha: 0.1)),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.15),
            blurRadius: 16,
            spreadRadius: 1,
          ),
        ],
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            LocaleKeys.reviewCardTitle.tr(),
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
              color: Colors.black.withValues(alpha: 0.8),
              fontWeight: FontWeight.w300,
            ),
          ),
          const SizedBox(height: 6),
          Text(
            entry.happen,
            style: Theme.of(
              context,
            ).textTheme.bodyLarge?.copyWith(color: Colors.black),
          ),
          const SizedBox(height: 42),
          Text(
            LocaleKeys.reviewCardSubtitle.tr(),
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
              color: Colors.black.withValues(alpha: 0.8),
              fontWeight: FontWeight.w300,
            ),
          ),
          const SizedBox(height: 6),
          Text(
            entry.action,
            style: Theme.of(
              context,
            ).textTheme.bodyLarge?.copyWith(color: Colors.black),
          ),
        ],
      ),
    );
  }
}
