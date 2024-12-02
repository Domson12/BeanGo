import 'package:auto_route/auto_route.dart';
import 'package:bean_go/features/onboarding/onboarding_page.dart';
import 'package:flutter/cupertino.dart';

import '../services/auth_service.dart';
import 'domain/screen_type.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter implements AutoRouteGuard {

  final List<String> notAuthorizedRoute = [
    OnboardingRoute.name,
  ];

  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: OnboardingRoute.page, fullscreenDialog: true),
  ];

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
  }

  bool checkAuthorizedRoute(String route) {
    return notAuthorizedRoute.contains(route);
  }

  // Future<void> pushLogin() async {
  //   replaceAll([const LoginRoute()]);
  // }

  // Future<void> pushDashboard() async {
  //   replaceAll([const DashBoardRoute()]);
  // }


  Future<void> pushByType({required ScreenType type, Object? object}) async {
    switch (type) {
      case ScreenType.onboarding:
        await replaceAll([const OnboardingRoute()]);
        break;
      default:
        break;
    }
  }
}
