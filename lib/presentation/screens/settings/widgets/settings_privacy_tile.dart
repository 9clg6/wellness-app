import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:welly/core/localization/generated/locale_keys.g.dart';
import 'package:welly/presentation/screens/settings/settings.view_model.dart';

/// Tuile de paramètres pour la politique de confidentialité
class SettingsPrivacyTile extends ConsumerWidget {
  /// Constructeur
  const SettingsPrivacyTile({required this.vm, super.key});

  /// ViewModel des paramètres
  final SettingsViewModel vm;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListTile(
      leading: const Icon(Icons.privacy_tip_outlined),
      title: Text(LocaleKeys.settings_privacy_title.tr()),
      subtitle: Text(LocaleKeys.settings_privacy_subtitle.tr()),
      onTap: vm.openPrivacyUrlAndTrack,
    );
  }
}

/// Tuile de paramètres pour la suppression de compte
class SettingsDeleteAccountTile extends ConsumerWidget {
  /// Constructeur
  const SettingsDeleteAccountTile({required this.vm, super.key});

  /// ViewModel des paramètres
  final SettingsViewModel vm;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListTile(
      leading: const Icon(Icons.delete_forever_outlined, color: Colors.red),
      title: Text(LocaleKeys.settings_delete_account_title.tr()),
      subtitle: Text(LocaleKeys.settings_delete_account_subtitle.tr()),
      onTap: () async {
        await vm.confirmAndDeleteAccount();
      },
    );
  }
}
