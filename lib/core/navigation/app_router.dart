import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../features/onboarding/onboarding_page.dart';
import '../../features/auth/auth_page.dart';
import '../../features/auth/login/presentation/login_page.dart';
import '../../features/auth/register/presentation/register_page.dart';
import 'guards/auth_guard.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page|Screen|Widget,Route')
class AppRouter extends RootStackRouter {
  AppRouter({required this.authGuard});

  final AuthGuard authGuard;

  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: OnboardingRoute.page, initial: true),
    CustomRoute(
      page: AuthRoute.page,
      guards: [authGuard],
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
