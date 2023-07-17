// ignore_for_file: unused_import, prefer_const_constructors

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../screens/Auth/auth_page.dart';
import '../screens/Home/home_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(
  replaceInRouteName: 'Page,Route',
)
class AppRouter extends _$AppRouter {
  // @override
  // RouteType get defaultRouteType => RouteType.custom(
  //     durationInMilliseconds: 200,
  //     transitionsBuilder: (context, animation, secondaryAnimation, child) {
  //       return FadeTransition(
  //         opacity: animation,
  //         child: child,
  //       );
  //     });

  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: HomeRoute.page, path: '/home'),
        AutoRoute(page: AuthRoute.page, path: '/auth', initial: true),
      ];
}
