// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

/// generated route for
/// [AiAnalyzeScreen]
class AiAnalyzeRoute extends PageRouteInfo<void> {
  const AiAnalyzeRoute({List<PageRouteInfo>? children})
    : super(AiAnalyzeRoute.name, initialChildren: children);

  static const String name = 'AiAnalyzeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const AiAnalyzeScreen();
    },
  );
}

/// generated route for
/// [AuthenticationScreen]
class AuthenticationRoute extends PageRouteInfo<AuthenticationRouteArgs> {
  AuthenticationRoute({
    void Function()? onFinished,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
         AuthenticationRoute.name,
         args: AuthenticationRouteArgs(onFinished: onFinished, key: key),
         initialChildren: children,
       );

  static const String name = 'AuthenticationRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<AuthenticationRouteArgs>(
        orElse: () => const AuthenticationRouteArgs(),
      );
      return AuthenticationScreen(onFinished: args.onFinished, key: args.key);
    },
  );
}

class AuthenticationRouteArgs {
  const AuthenticationRouteArgs({this.onFinished, this.key});

  final void Function()? onFinished;

  final Key? key;

  @override
  String toString() {
    return 'AuthenticationRouteArgs{onFinished: $onFinished, key: $key}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! AuthenticationRouteArgs) return false;
    return key == other.key;
  }

  @override
  int get hashCode => key.hashCode;
}

/// generated route for
/// [HomeScreen]
class HomeRoute extends PageRouteInfo<HomeRouteArgs> {
  HomeRoute({
    Key? key,
    bool isFromRealHome = false,
    List<PageRouteInfo>? children,
  }) : super(
         HomeRoute.name,
         args: HomeRouteArgs(key: key, isFromRealHome: isFromRealHome),
         initialChildren: children,
       );

  static const String name = 'HomeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<HomeRouteArgs>(
        orElse: () => const HomeRouteArgs(),
      );
      return HomeScreen(key: args.key, isFromRealHome: args.isFromRealHome);
    },
  );
}

class HomeRouteArgs {
  const HomeRouteArgs({this.key, this.isFromRealHome = false});

  final Key? key;

  final bool isFromRealHome;

  @override
  String toString() {
    return 'HomeRouteArgs{key: $key, isFromRealHome: $isFromRealHome}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! HomeRouteArgs) return false;
    return key == other.key && isFromRealHome == other.isFromRealHome;
  }

  @override
  int get hashCode => key.hashCode ^ isFromRealHome.hashCode;
}

/// generated route for
/// [OnBoardingScreen]
class OnBoardingRoute extends PageRouteInfo<void> {
  const OnBoardingRoute({List<PageRouteInfo>? children})
    : super(OnBoardingRoute.name, initialChildren: children);

  static const String name = 'OnBoardingRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const OnBoardingScreen();
    },
  );
}

/// generated route for
/// [RealHomeScreen]
class RealHomeRoute extends PageRouteInfo<void> {
  const RealHomeRoute({List<PageRouteInfo>? children})
    : super(RealHomeRoute.name, initialChildren: children);

  static const String name = 'RealHomeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const RealHomeScreen();
    },
  );
}

/// generated route for
/// [ReviewScreen]
class ReviewRoute extends PageRouteInfo<void> {
  const ReviewRoute({List<PageRouteInfo>? children})
    : super(ReviewRoute.name, initialChildren: children);

  static const String name = 'ReviewRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ReviewScreen();
    },
  );
}
