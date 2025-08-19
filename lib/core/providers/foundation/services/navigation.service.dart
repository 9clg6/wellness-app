import 'package:starter_kit/foundation/routing/app_router.dart';

/// Navigation service
class NavigationService {
  /// Constructor
  NavigationService({required AppRouter appRouter}) : _appRouter = appRouter;

  /// App router
  final AppRouter _appRouter;

  /// Navigate to home
  void navigateToHome({bool replace = false}) {
    if (replace) {
      _appRouter.replace(const HomeRoute());
    } else {
      _appRouter.push(const HomeRoute());
    }
  }

  /// Navigate back
  void navigateBack() {
    _appRouter.maybePop();
  }

  /// Navigate to sign in page
  void navigateToSignInPage() {
    _appRouter.push(const AuthenticationRoute());
  }

  /// Pop
  void pop() {
    _appRouter.maybePop();
  }

  /// Navigate to real home
  void navigateToRealHome({bool replace = false}) {
    if (replace) {
      _appRouter.replace(const RealHomeRoute());
    } else {
      _appRouter.push(const RealHomeRoute());
    }
  }

  /// Navigate to review
  void navigateToReview({bool replace = false}) {
    if (replace) {
      _appRouter.replace(const ReviewRoute());
    } else {
      _appRouter.push(const ReviewRoute());
    }
  }

  /// Navigate to daily journey
  void navigateToDailyJourney() {
    _appRouter.push(const HomeRoute());
  }
}
