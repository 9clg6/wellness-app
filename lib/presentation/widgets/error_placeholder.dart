import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:welly/core/localization/generated/locale_keys.g.dart';
import 'package:welly/core/providers/config/kernel.provider.dart';
import 'package:welly/presentation/widgets/text_variant.dart';

/// Error placeholder widget
class ErrorPlaceholder extends ConsumerWidget {
  /// Constructor
  // ignore: use_key_in_widget_constructors
  const ErrorPlaceholder(this.error, this.stackTrace);

  /// Error
  final Object error;

  /// Stack trace
  final StackTrace stackTrace;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 26),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            Icons.error,
            size: 40,
            color: Theme.of(context).colorScheme.error,
          ),
          const Gap(16),
          TextVariant(
            LocaleKeys.errorPlaceholder_description.tr(
              args: <String>[error.toString()],
            ),
            textAlign: TextAlign.center,
          ),
          const Gap(16),
          TextButton(
            onPressed: () {
              ref.invalidate(kernelProvider);
            },
            child: TextVariant(
              LocaleKeys.errorPlaceholder_retry.tr(),
              variantType: TextVariantType.titleMedium,
            ),
          ),
        ],
      ),
    );
  }
}
