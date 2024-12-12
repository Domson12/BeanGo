import 'package:auto_route/auto_route.dart';
import 'package:bean_go/features/onboarding/onboarding_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(
  replaceInRouteName: 'Page|Screen|Widget,Route',
)
class AppRouter extends RootStackRouter {

  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: OnboardingRoute.page, initial: true),
  ];
}
