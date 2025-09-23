import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:welly/core/localization/generated/locale_keys.g.dart';
import 'package:welly/presentation/widgets/form_input.dart';

/// Entry card
class EntryCard extends StatelessWidget {
  /// Constructor
  const EntryCard({
    required this.height,
    required this.happenController,
    required this.becauseController,
    required this.onHappenChanged,
    required this.onBecauseChanged,
    super.key,
    this.secondField,
    this.decoration,
  });

  /// Height
  final double height;

  /// Happen controller
  final TextEditingController happenController;

  /// Because controller
  final TextEditingController becauseController;

  /// On happen changed
  final ValueChanged<String> onHappenChanged;

  /// On because changed
  final ValueChanged<String> onBecauseChanged;

  /// Second field
  final Widget? secondField;

  /// Decoration
  final Decoration? decoration;

  /// Build
  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    return Container(
      width: double.infinity,
      height: height,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 28),
      decoration:
          decoration as BoxDecoration? ??
          BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: colorScheme.outline.withValues(alpha: 0.1),
            ),
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: colorScheme.onSurface.withValues(alpha: 0.15),
                blurRadius: 16,
                spreadRadius: 1,
              ),
            ],
            borderRadius: BorderRadius.circular(32),
          ),
      child: AnimatedSize(
        duration: const Duration(milliseconds: 350),
        curve: Curves.easeInOutCubic,
        alignment: Alignment.topCenter,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Flexible(
              child: FormInput(
                minLines: null,
                expands: true,
                controller: happenController,
                labelText: LocaleKeys.home_entry_card_label.tr(),
                onChanged: onHappenChanged,
              ),
            ),
            if (secondField != null) Flexible(child: secondField!),
          ],
        ),
      ),
    );
  }
}
