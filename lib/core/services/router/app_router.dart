import 'package:auto_route/auto_route.dart';
import 'package:flex_travel_tech_task/feautures/home/presentation/screens/home_screen.dart';
import 'package:flex_travel_tech_task/feautures/home/presentation/screens/home_wrapper_screen.dart';
import 'package:flex_travel_tech_task/feautures/intro/presentation/screens/intro_screen.dart';
import 'package:flutter/widgets.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page|Screen,Route')
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => <AutoRoute>[
        AutoRoute(
          initial: true,
          page: IntroRoute.page,
        ),
        CustomRoute(
          page: HomeWrapperRoute.page,
          transitionsBuilder: TransitionsBuilders.slideLeft,
          durationInMilliseconds: 500,
          children: [
            AutoRoute(
              initial: true,
              page: HomeRoute.page,
            ),
          ],
        ),
      ];
}
