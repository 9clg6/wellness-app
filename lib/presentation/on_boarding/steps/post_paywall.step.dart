import 'dart:async';

import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:welly/core/localization/generated/locale_keys.g.dart';
import 'package:welly/core/providers/core/services/notification.service.provider.dart';
import 'package:welly/core/providers/core/services/tracking.service.provider.dart';
import 'package:welly/core/providers/foundation/services/notification.service.dart';
import 'package:welly/core/providers/foundation/services/tracking.service.dart';
import 'package:welly/presentation/on_boarding/on_boarding.view_model.dart';
import 'package:welly/presentation/widgets/continue_button_card.dart';
import 'package:welly/presentation/widgets/text_variant.dart';

/// Post-paywall step (after refusal)
class PostPaywallStep extends ConsumerWidget {
  /// Constructor
  const PostPaywallStep({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TextVariant(
            LocaleKeys.onboarding_postPaywall_subtitle.tr(),
            textAlign: TextAlign.center,
            variantType: TextVariantType.bodyLarge,
          ),
          const Gap(24),
          ContinueButtonCard(
            onTap: () async {
              // Request notification permissions before completing onboarding
              await _requestNotificationPermissions(ref);

              // Complete onboarding
              await ref
                  .read(onBoardingViewModelProvider.notifier)
                  .completeOnboarding();
            },
            title: LocaleKeys.onboarding_postPaywall_enter.tr(),
          ),
        ],
      ),
    );
  }
}

/// Request notification permissions with user-friendly approach
Future<void> _requestNotificationPermissions(WidgetRef ref) async {
  try {
    debugPrint('[PostPaywallStep] Requesting notification permissions...');

    final NotificationService notificationService = await ref.read(
      notificationServiceProvider.future,
    );
    final TrackingService trackingService = await ref.read(
      trackingServiceProvider,
    );

    // Track permission request
    await trackingService.trackNotificationPermissionRequested();

    // Request permissions
    final bool granted = await notificationService
        .requestPermissionsWithDelay();

    if (granted) {
      debugPrint('[PostPaywallStep] ✅ Notification permissions granted!');
      await trackingService.trackNotificationPermissionGranted();
    } else {
      debugPrint('[PostPaywallStep] ⚠️ Notification permissions denied');
      debugPrint('[PostPaywallStep] User can enable them later in settings');
    }
  } on Exception catch (e, s) {
    debugPrint(
      '[PostPaywallStep] Error requesting notification permissions: $e',
    );
    unawaited(FirebaseCrashlytics.instance.recordError(e, s));
  }
}
