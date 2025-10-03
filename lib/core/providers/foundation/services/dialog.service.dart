import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:welly/core/localization/generated/locale_keys.g.dart';
import 'package:welly/foundation/routing/app_router.dart';
import 'package:welly/presentation/widgets/custom_button.dart';
import 'package:welly/presentation/widgets/text_variant.dart';

/// Dialog service
class DialogService {
  /// Constructor
  DialogService({required AppRouter appRouter}) : _appRouter = appRouter;

  /// App router
  final AppRouter _appRouter;

  /// Dialogs
  bool _isDialogOpen = false;

  /// Custom showDialog wrapper that includes logging
  Future<T?> _showCustomDialog<T>({
    required BuildContext context,
    required WidgetBuilder builder,
    bool barrierDismissible = true,
    String? dialogName,
  }) async {
    if (_isDialogOpen) return null;
    _isDialogOpen = true;
    return showDialog<T>(
      context: context,
      builder: builder,
      barrierDismissible: barrierDismissible,
    );
  }

  /// Custom showCupertinoModalPopup wrapper that includes logging
  // ignore: unused_element Can be use in the future
  Future<T?> _showCupertinoModalPopup<T>({
    required BuildContext context,
    required WidgetBuilder builder,
    bool barrierDismissible = true,
    String? dialogName,
  }) async {
    if (_isDialogOpen) return null;
    _isDialogOpen = true;
    return showCupertinoModalPopup<T>(
      context: context,
      builder: builder,
      barrierDismissible: barrierDismissible,
    );
  }

  /// Standard dialog
  Future<T?>? showTemplateDialog<T>({
    required String title,
    required String description,
    required String buttonTitle,
    VoidCallback? onButtonTap,
    String? buttonTitle2,
    VoidCallback? onButton2Tap,
  }) {
    final BuildContext? context = _appRouter.navigatorKey.currentContext;
    if (context == null) return null;
    final ColorScheme colorScheme = Theme.of(context).colorScheme;

    return _showCustomDialog(
      context: context,
      builder: (BuildContext context) => Center(
        child: Material(
          color: Colors.transparent,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
              decoration: BoxDecoration(
                color: colorScheme.surfaceContainerHigh,
                borderRadius: BorderRadius.circular(24),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  TextVariant(
                    title,
                    variantType: TextVariantType.headlineMedium,
                  ),
                  const Gap(8),
                  TextVariant(description),
                  const Gap(24),
                  CustomButton(
                    title: buttonTitle,
                    onTap: onButtonTap ?? _appRouter.pop,
                    boldTitle: true,
                  ),
                  const Gap(16),
                  if (buttonTitle2 != null)
                    CustomButton(
                      title: buttonTitle2,
                      onTap: onButton2Tap,
                      inverted: true,
                      boldTitle: true,
                      border: true,
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Show a warning dialog
  Future<void> showWarningDialog() async {
    final BuildContext? context = _appRouter.navigatorKey.currentContext;
    if (context == null) return;

    return showTemplateDialog<void>(
      title: LocaleKeys.home_privacy_policy_title.tr(),
      description: LocaleKeys.home_privacy_policy.tr(),
      buttonTitle: LocaleKeys.home_privacy_policy_button.tr(),
    );
  }
}
