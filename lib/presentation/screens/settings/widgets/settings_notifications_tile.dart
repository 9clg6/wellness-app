import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:welly/core/localization/generated/locale_keys.g.dart';
import 'package:welly/presentation/screens/settings/settings.view_model.dart';
import 'package:welly/presentation/widgets/text_variant.dart';

/// Tuile de paramètres pour activer/désactiver les notifications
class SettingsNotificationsTile extends ConsumerWidget {
  /// Constructeur
  const SettingsNotificationsTile({required this.vm, super.key});

  /// ViewModel des paramètres
  final SettingsViewModel vm;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return StreamBuilder<bool>(
      stream: vm.notificationsEnabledStream,
      builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
        final bool enabled = snapshot.data ?? true;
        return ListTile(
          leading: Icon(
            enabled
                ? Icons.notifications_active_outlined
                : Icons.notifications_off_outlined,
          ),
          title: Text(
            enabled
                ? LocaleKeys.settings_notifications_disable_title.tr()
                : (LocaleKeys.settings_notifications_enable_title.tr()),
          ),
          subtitle: Text(
            enabled
                ? LocaleKeys.settings_notifications_disable_subtitle.tr()
                : (LocaleKeys.settings_notifications_enable_subtitle.tr()),
          ),
          onTap: () async {
            final bool applied = await vm.confirmNotificationsChangeAndApply(
              currentEnabled: enabled,
            );
            if (applied && context.mounted) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: TextVariant(
                    (enabled
                            ? LocaleKeys.settings_notifications_disabled_toast
                            : LocaleKeys.settings_notifications_enabled_toast)
                        .tr(),
                  ),
                ),
              );
            }
          },
        );
      },
    );
  }
}
