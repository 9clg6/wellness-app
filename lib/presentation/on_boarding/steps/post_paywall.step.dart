import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:starter_kit/foundation/routing/app_router.dart';
import 'package:starter_kit/presentation/widgets/continue_button_card.dart';

/// Étape post-paywall (ou après refus)
class PostPaywallStep extends ConsumerWidget {
  const PostPaywallStep({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            'Bienvenue dans la version gratuite (2 entrées/jour + aperçu stats).',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18, color: Colors.black),
          ),
          const Gap(24),
          ContinueButtonCard(
            onTap: () {
              context.router.replace(const RealHomeRoute());
            },
            title: 'Entrer dans l’app',
          ),
        ],
      ),
    );
  }
}
