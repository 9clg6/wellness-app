import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:starter_kit/core/localization/generated/locale_keys.g.dart';
import 'package:starter_kit/presentation/widgets/tappable_componenent.dart';
import 'package:starter_kit/presentation/widgets/text_variant.dart';

/// Continue button card
class ContinueButtonCard extends StatelessWidget {
  /// Constructor
  const ContinueButtonCard({
    required this.onTap,
    this.title,
    super.key,
    this.width,
    this.centerTitle = true,
    this.color,
    this.textColor,
    this.fontWeight,
    this.fontSize = 16,
  });

  /// On tap
  final VoidCallback onTap;

  /// Title
  final String? title;

  /// Width
  final double? width;

  /// Center title
  final bool centerTitle;

  /// Font size
  final double fontSize;

  /// Color
  final Color? color;

  /// Text color
  final Color? textColor;

  /// Font weight
  final FontWeight? fontWeight;

  /// Build
  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;

    return TappableComponent(
      onTap: onTap,
      color: color ?? colorScheme.primary,
      borderRadius: BorderRadius.circular(32),
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(16),
        width: width,
        decoration: BoxDecoration(
          color: color ?? colorScheme.primary,
          borderRadius: BorderRadius.circular(32),
          boxShadow: <BoxShadow>[
            BoxShadow(
              blurRadius: 16,
              spreadRadius: 1,
              color: Colors.black.withAlpha(20),
            ),
          ],
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: centerTitle
              ? MainAxisAlignment.center
              : MainAxisAlignment.start,
          children: <Widget>[
            TextVariant(
              title ?? LocaleKeys.continueBtn.tr(),
              variantType: TextVariantType.bodyLarge,
              color: textColor ?? Theme.of(context).colorScheme.onPrimary,
              fontWeight: fontWeight ?? FontWeight.w500,
            ),
          ],
        ),
      ),
    );
  }
}
