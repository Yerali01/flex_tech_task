// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

/// generated route for
/// [HomeScreen]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const HomeScreen();
    },
  );
}

/// generated route for
/// [HomeWrapperScreen]
class HomeWrapperRoute extends PageRouteInfo<void> {
  const HomeWrapperRoute({List<PageRouteInfo>? children})
    : super(HomeWrapperRoute.name, initialChildren: children);

  static const String name = 'HomeWrapperRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const HomeWrapperScreen());
    },
  );
}

/// generated route for
/// [IntroScreen]
class IntroRoute extends PageRouteInfo<IntroRouteArgs> {
  IntroRoute({Key? key, List<PageRouteInfo>? children})
    : super(
        IntroRoute.name,
        args: IntroRouteArgs(key: key),
        initialChildren: children,
      );

  static const String name = 'IntroRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<IntroRouteArgs>(
        orElse: () => const IntroRouteArgs(),
      );
      return IntroScreen(key: args.key);
    },
  );
}

class IntroRouteArgs {
  const IntroRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'IntroRouteArgs{key: $key}';
  }
}
