import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:starter_kit/core/localization/generated/locale_keys.g.dart';
import 'package:starter_kit/presentation/widgets/tappable_componenent.dart';

/// Continue button card
class ContinueButtonCard extends StatelessWidget {
  /// Constructor
  const ContinueButtonCard({required this.onTap, this.title, super.key});

  /// On tap
  final VoidCallback onTap;

  /// Title
  final String? title;

  /// Build
  @override
  Widget build(BuildContext context) {
    return TappableComponent(
      onTap: onTap,
      color: Colors.white,
      borderRadius: BorderRadius.circular(32),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(32),
          boxShadow: <BoxShadow>[
            BoxShadow(
              blurRadius: 16,
              spreadRadius: 1,
              color: Colors.black.withAlpha(20),
            ),
          ],
        ),
        child: Text(
          title ?? LocaleKeys.continueBtn.tr(),
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w300,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
