import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:welly/core/providers/core/services/authentication.service.provider.dart';
import 'package:welly/core/providers/core/services/dialog.service.provider.dart';
import 'package:welly/core/providers/core/services/notification.service.provider.dart';
import 'package:welly/core/providers/core/services/tracking.service.provider.dart';
import 'package:welly/core/providers/data/storages/user_preferences.storage.provider.dart';
import 'package:welly/core/providers/foundation/services/authentication.service.dart';
import 'package:welly/core/providers/foundation/services/notification.service.dart';

part 'settings.view_model.g.dart';

/// Settings view model
@riverpod
class SettingsViewModel extends _$SettingsViewModel {
  /// Notifications enabled stream
  Stream<bool>? get notificationsEnabledStream =>
      _notificationService?.notificationsEnabledStream;

  /// Notification service
  NotificationService? _notificationService;

  @override
  Future<SettingsViewModel> build() async {
    _notificationService = await ref.watch(notificationServiceProvider.future);
    return this;
  }

  /// Ouvre l'URL de la politique de confidentialité dans le navigateur
  Future<void> openPrivacyUrl() async {
    final Uri uri = Uri.parse('https://welly-eccf0.web.app/');
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    }
  }

  /// Ouvre la politique de confidentialité et trace l'action
  Future<void> openPrivacyUrlAndTrack() async {
    await ref.read(trackingServiceProvider).trackSettingsPrivacyOpened();
    await openPrivacyUrl();
  }

  /// Déconnexion utilisateur
  Future<void> logout() async {
    final AuthenticationService authService = await ref.read(
      authenticationServiceProvider.future,
    );
    await authService.logout();
  }

  /// Confirme et effectue la déconnexion (avec tracking).
  /// Retourne true si confirmé
  Future<bool> confirmAndLogout() async {
    final bool? confirmed = await ref
        .read(dialogServiceProvider)
        .confirmLogout();

    if (confirmed ?? false) {
      await logout();
      await ref.read(trackingServiceProvider).trackSettingsLogoutConfirmed();
      return true;
    }

    return false;
  }

  /// Définit l'état des notifications
  Future<void> setNotificationState({required bool value}) async {
    await _notificationService?.setPushNotificationsEnabled(enabled: value);
    await ref
        .read(userPreferencesStorageProvider)
        .setNotificationsEnabled(enabled: value);
  }

  /// Confirme, applique le changement de notifications et trace l'action
  /// Retourne true si le changement a été appliqué
  Future<bool> confirmNotificationsChangeAndApply({
    required bool currentEnabled,
  }) async {
    final bool? confirmed = await ref
        .read(dialogServiceProvider)
        .confirmNotificationsChange(activating: !currentEnabled);
    if (confirmed ?? false) {
      await setNotificationState(value: !currentEnabled);
      await ref
          .read(trackingServiceProvider)
          .trackSettingsNotificationsChanged(enabled: !currentEnabled);
      return true;
    }
    return false;
  }
}
