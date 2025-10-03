import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:welly/core/localization/generated/locale_keys.g.dart';
import 'package:welly/presentation/screens/settings/settings.view_model.dart';

/// Tuile de paramètres pour la déconnexion
class SettingsLogoutTile extends ConsumerWidget {
  /// Constructeur
  const SettingsLogoutTile({required this.vm, super.key});

  /// ViewModel des paramètres
  final SettingsViewModel vm;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListTile(
      leading: const Icon(Icons.logout),
      title: Text(LocaleKeys.settings_logout.tr()),
      onTap: () async {
        await vm.confirmAndLogout();
      },
    );
  }
}
