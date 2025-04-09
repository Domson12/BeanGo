import 'package:auto_route/auto_route.dart';
import 'package:bean_go/features/onboarding/onboarding_page.dart';
import 'package:bean_go/features/auth/login/login_page.dart';
import 'package:flutter/material.dart';

import '../../features/auth/auth_page.dart';
import '../../features/auth/register/register_page.dart';
part 'app_router.gr.dart';

@AutoRouterConfig(
  replaceInRouteName: 'Page|Screen|Widget,Route',
)
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: OnboardingRoute.page, initial: true),
        CustomRoute(
          page: AuthRoute.page,
          durationInMilliseconds: 450,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) {
          return FadeTransition(
            opacity: animation,
            child: child,
          );
          },
        ),
        AutoRoute(page: LoginRoute.page),
        AutoRoute(page: RegisterRoute.page),
      ];
}
