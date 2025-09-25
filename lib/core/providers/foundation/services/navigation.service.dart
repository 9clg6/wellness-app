import 'package:flutter/material.dart';
import 'package:welly/foundation/routing/app_router.dart';

/// Navigation service
class NavigationService {
  /// Constructor
  NavigationService({required AppRouter appRouter}) : _appRouter = appRouter;

  /// App router
  final AppRouter _appRouter;

  /// Navigate to home
  void navigateToHome({bool replace = false}) {
    if (replace) {
      debugPrint('navigateToHome replace');
      _appRouter.replace(HomeRoute());
    } else {
      debugPrint('navigateToHome push');
      _appRouter.push(HomeRoute());
    }
  }

  /// Navigate back
  void navigateBack() {
    _appRouter.maybePop();
  }

  /// Navigate to sign in page
  void navigateToSignInPage() {
    _appRouter.push(AuthenticationRoute());
  }

  /// Pop
  void pop({bool? result}) {
    _appRouter.maybePop(result);
  }

  /// Navigate to real home
  void navigateToRealHome({bool replace = false}) {
    if (replace) {
      debugPrint('navigateToRealHome replace');
      _appRouter.replace(const RealHomeRoute());
    } else {
      debugPrint('navigateToRealHome push');
      _appRouter.push(const RealHomeRoute());
    }
  }

  /// Navigate to review
  Future<bool?> navigateToReview({bool replace = false}) {
    if (replace) {
      debugPrint('navigateToReview replace');
      return _appRouter.replace<bool?>(const ReviewRoute());
    } else {
      debugPrint('navigateToReview push');
      return _appRouter.push<bool?>(const ReviewRoute());
    }
  }

  /// Navigate to daily journey
  Future<bool?> navigateToDailyJourney({bool isFromRealHome = false}) {
    debugPrint('navigateToDailyJourney push');
    return _appRouter.push<bool?>(HomeRoute(isFromRealHome: isFromRealHome));
  }

  /// Navigate to analyze with ai
  void navigateToAnalyzeWithAi() {
    _appRouter.push(const AiAnalyzeRoute());
  }
}
