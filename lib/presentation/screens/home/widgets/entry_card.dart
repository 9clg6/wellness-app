import 'package:flutter/material.dart';
import 'package:starter_kit/presentation/widgets/form_input.dart';

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
    return Container(
      width: double.infinity,
      height: height,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 28),
      decoration:
          decoration as BoxDecoration? ??
          BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.black.withValues(alpha: 0.1)),
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.15),
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
                style: Theme.of(
                  context,
                ).textTheme.bodyMedium?.copyWith(color: Colors.black),
                minLines: null,
                expands: true,
                controller: happenController,
                labelText: "Aujourd'hui, j'ai réussi à...",
                labelStyle: Theme.of(
                  context,
                ).textTheme.bodyMedium?.copyWith(color: Colors.black),
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
