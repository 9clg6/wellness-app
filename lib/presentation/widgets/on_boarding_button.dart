import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:welly/presentation/widgets/tappable_componenent.dart';
import 'package:welly/presentation/widgets/text_variant.dart';

/// On boarding button
class OnBoardingButton extends StatelessWidget {
  /// Constructor
  const OnBoardingButton({
    required this.onTap,
    required this.title,
    this.isSelected = false,
    super.key,
  });

  /// Title
  final String title;

  /// Is selected
  final bool isSelected;

  /// On tap
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return TappableComponent(
      onTap: onTap,
      color: Colors.white,
      borderRadius: BorderRadius.circular(32),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32),
          border: Border.all(width: 0.5),
        ),
        child: Row(
          children: <Widget>[
            Icon(
              isSelected ? Icons.check_circle : Icons.circle_outlined,
              color: isSelected ? Colors.green : Colors.black,
              size: 24,
            ),
            const Gap(8),
            TextVariant(
              title,
              fontWeight: FontWeight.w600,
            ),
          ],
        ),
      ),
    );
  }
}
