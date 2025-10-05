import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:welly/core/localization/generated/locale_keys.g.dart';
import 'package:welly/presentation/screens/settings/settings.view_model.dart';
import 'package:welly/presentation/screens/settings/widgets/settings_auth_tile.dart';
import 'package:welly/presentation/screens/settings/widgets/settings_notifications_tile.dart';
import 'package:welly/presentation/screens/settings/widgets/settings_privacy_tile.dart';
import 'package:welly/presentation/widgets/custom_app_bar.dart';
import 'package:welly/presentation/widgets/custom_loader.dart';
import 'package:welly/presentation/widgets/error_placeholder.dart';
import 'package:welly/presentation/widgets/text_variant.dart';

/// Settings screen
@RoutePage()
class SettingsScreen extends ConsumerWidget {
  /// Constructor
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<SettingsViewModel> vm = ref.watch(
      settingsViewModelProvider,
    );

    return vm.when(
      data: (SettingsViewModel vm) => Scaffold(
        appBar: CustomAppBar(
          title: TextVariant(
            LocaleKeys.settings_title.tr(),
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(vertical: 8),
          children: <Widget>[
            SettingsNotificationsTile(vm: vm),
            const Divider(height: 1),
            SettingsAuthTile(vm: vm),
            const Divider(height: 1),
            SettingsPrivacyTile(vm: vm),
            const Divider(height: 1),
            SettingsDeleteAccountTile(vm: vm),
          ],
        ),
      ),
      error: ErrorPlaceholder.new,
      loading: CustomLoader.new,
    );
  }
}
