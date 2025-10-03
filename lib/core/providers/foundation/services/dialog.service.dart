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
    final Future<T?> future = showDialog<T>(
      context: context,
      builder: builder,
      barrierDismissible: barrierDismissible,
    );
    await future.whenComplete(() {
      _isDialogOpen = false;
    });
    return future;
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
    final Future<T?> future = showCupertinoModalPopup<T>(
      context: context,
      builder: builder,
      barrierDismissible: barrierDismissible,
    );
    await future.whenComplete(() {
      _isDialogOpen = false;
    });
    return future;
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

  /// Affiche un dialogue de confirmation générique et retourne true si confirmé
  Future<bool?> showConfirmDialog({
    required String title,
    required String description,
    required String confirmLabel,
    required String cancelLabel,
  }) async {
    final BuildContext? context = _appRouter.navigatorKey.currentContext;
    if (context == null) return null;

    return showTemplateDialog<bool>(
      title: title,
      description: description,
      buttonTitle: confirmLabel,
      onButtonTap: () => _appRouter.pop(true),
      buttonTitle2: cancelLabel,
      onButton2Tap: () => _appRouter.pop(false),
    );
  }

  /// Confirme le changement d'état des notifications
  Future<bool?> confirmNotificationsChange({required bool activating}) {
    final String title = activating
        ? LocaleKeys.settings_notifications_enable_dialog_title.tr()
        : LocaleKeys.settings_notifications_disable_dialog_title.tr();
    final String message = activating
        ? LocaleKeys.settings_notifications_enable_dialog_message.tr()
        : LocaleKeys.settings_notifications_disable_dialog_message.tr();

    return showConfirmDialog(
      title: title,
      description: message,
      confirmLabel: activating
          ? LocaleKeys.settings_notifications_enable_title.tr()
          : LocaleKeys.common_disable.tr(),
      cancelLabel: LocaleKeys.common_cancel.tr(),
    );
  }

  /// Confirme la déconnexion
  Future<bool?> confirmLogout() {
    return showConfirmDialog(
      title: LocaleKeys.settings_logout_confirm_title.tr(),
      description: LocaleKeys.settings_logout_confirm_message.tr(),
      confirmLabel: LocaleKeys.settings_logout.tr(),
      cancelLabel: LocaleKeys.common_cancel.tr(),
    );
  }
}
