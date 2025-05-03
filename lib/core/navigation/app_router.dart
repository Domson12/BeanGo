import 'package:auto_route/auto_route.dart';
import 'package:bean_go/features/dashboard/dashboard_page.dart';
import 'package:bean_go/features/dashboard/history/presentation/history_page.dart';
import 'package:bean_go/features/dashboard/home/presentation/home_page.dart';
import 'package:bean_go/features/dashboard/profile/presentation/profile_page.dart';
import '../../features/startup/presentation/startup_page.dart';
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
    AutoRoute(page: StartupRoute.page, initial: true),

    AutoRoute(
      page: DashboardRoute.page,
      guards: [authGuard],
      children: [
        AutoRoute(page: HistoryRoute.page),
        AutoRoute(page: HomeRoute.page),
        AutoRoute(page: ProfileRoute.page),
      ],
    ),

    CustomRoute(
      page: AuthRoute.page,
      durationInMilliseconds: 450,
      transitionsBuilder: (
          context, animation, secondaryAnimation, child,
          ) => FadeTransition(opacity: animation, child: child),
    ),
    AutoRoute(page: LoginRoute.page),
    AutoRoute(page: RegisterRoute.page),
    AutoRoute(page: OnboardingRoute.page),
  ];
}
