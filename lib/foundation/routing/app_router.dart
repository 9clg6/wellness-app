import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:welly/core/providers/core/services/user.service.provider.dart';
import 'package:welly/core/providers/foundation/services/user.service.dart';
import 'package:welly/presentation/on_boarding/on_boarding.screen.dart';
import 'package:welly/presentation/screens/ai_analyze/ai_analyze.screen.dart';
import 'package:welly/presentation/screens/authentication/authentication.screen.dart';
import 'package:welly/presentation/screens/home/home.screen.dart';
import 'package:welly/presentation/screens/privacy_policy/privacy_policy.screen.dart';
import 'package:welly/presentation/screens/real_home/real_home.screen.dart';
import 'package:welly/presentation/screens/review/review.screen.dart';

part 'app_router.gr.dart';

/// App router
@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  List<AutoRoute> get routes => kIsWeb
      ? <AutoRoute>[AutoRoute(page: PrivacyPolicyRoute.page, initial: true)]
      : <AutoRoute>[
          AutoRoute(page: AuthenticationRoute.page),
          AutoRoute(
            page: HomeRoute.page,
            guards: <AutoRouteGuard>[OnboardingGuard()],
          ),
          AutoRoute(
            page: RealHomeRoute.page,
            guards: <AutoRouteGuard>[OnboardingGuard()],
            initial: true,
          ),
          AutoRoute(
            page: ReviewRoute.page,
            guards: <AutoRouteGuard>[OnboardingGuard()],
          ),
          AutoRoute(page: OnBoardingRoute.page),
          AutoRoute(
            page: AiAnalyzeRoute.page,
            guards: <AutoRouteGuard>[OnboardingGuard()],
          ),
          AutoRoute(page: PrivacyPolicyRoute.page),
        ];
}

/// Onboarding guard - check if the onboarding has already been completed
class OnboardingGuard extends AutoRouteGuard {
  @override
  Future<void> onNavigation(
    NavigationResolver resolver,
    StackRouter router,
  ) async {
    final ProviderContainer container = ProviderScope.containerOf(
      resolver.context,
      listen: false,
    );

    final UserService userService = await container.read(
      userServiceProvider.future,
    );

    if (await userService.isOnboardingCompleted()) {
      debugPrint('[OnboardingGuard] isOnboardingCompleted: true');
      resolver.next();
      return;
    }

    debugPrint('[OnboardingGuard] isOnboardingCompleted: false');
    await resolver.redirectUntil(const OnBoardingRoute());
  }
}
