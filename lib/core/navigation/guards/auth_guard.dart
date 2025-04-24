import 'package:auto_route/auto_route.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../providers/global_providers.dart';
import '../app_router.dart';

class AuthGuard extends AutoRouteGuard {
  final Ref ref;

  AuthGuard(this.ref);

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    final user = ref.read(authStateProvider).value;

    if (user != null) {
      resolver.next(true);
    } else {
      router.replaceAll(
        [
          const LoginRoute(),
        ],
      );
    }
  }
}
