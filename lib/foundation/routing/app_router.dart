import 'package:auto_route/auto_route.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:starter_kit/core/providers/core/services/user.service.provider.dart';
import 'package:starter_kit/core/providers/foundation/services/user.service.dart';
import 'package:starter_kit/presentation/on_boarding/on_boarding.screen.dart';
import 'package:starter_kit/presentation/screens/authentication/authentication.screen.dart';
import 'package:starter_kit/presentation/screens/home/home.screen.dart';
import 'package:starter_kit/presentation/screens/real_home/real_home.screen.dart';
import 'package:starter_kit/presentation/screens/review/review.screen.dart';

part 'app_router.gr.dart';

/// App router
@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  List<AutoRoute> get routes => <AutoRoute>[
    AutoRoute(page: AuthenticationRoute.page),
    AutoRoute(
      page: RealHomeRoute.page,
      guards: <AutoRouteGuard>[OnboardingGuard()],
      initial: true,
    ),
    AutoRoute(page: ReviewRoute.page),
    AutoRoute(page: OnBoardingRoute.page),
  ];
}

/// Onboarding guard - vérifie que l'onboarding n'est pas déjà passé
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
      resolver.next();
      return;
    }

    await resolver.redirectUntil(const OnBoardingRoute());
  }
}
