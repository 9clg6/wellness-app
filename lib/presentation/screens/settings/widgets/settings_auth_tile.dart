import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:welly/core/localization/generated/locale_keys.g.dart';
import 'package:welly/core/providers/core/services/user.service.provider.dart';
import 'package:welly/core/providers/foundation/services/user.service.dart';
import 'package:welly/foundation/routing/app_router.dart';
import 'package:welly/presentation/screens/settings/settings.view_model.dart';

/// Tuile d'authentification: Se connecter / Se déconnecter selon l'état
class SettingsAuthTile extends ConsumerWidget {
  /// Constructeur
  const SettingsAuthTile({required this.vm, super.key});

  /// ViewModel des paramètres
  final SettingsViewModel vm;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<UserService> userService = ref.watch(userServiceProvider);

    return userService.when(
      data: (UserService service) {
        final bool isAuthenticated = service.isAuthenticated;
        return ListTile(
          leading: Icon(isAuthenticated ? Icons.logout : Icons.login),
          title: Text(
            isAuthenticated
                ? LocaleKeys.settings_logout.tr()
                : LocaleKeys.settings_signin.tr(),
          ),
          subtitle: isAuthenticated
              ? null
              : Text(LocaleKeys.settings_signin_subtitle.tr()),
          onTap: () async {
            if (isAuthenticated) {
              await vm.confirmAndLogout();
            } else {
              await context.router.push(
                AuthenticationRoute(
                  onFinished: () => context.router.maybePop(),
                  isFromRealHome: true,
                ),
              );
            }
          },
        );
      },
      error: (_, __) => const SizedBox.shrink(),
      loading: () => const SizedBox.shrink(),
    );
  }
}
