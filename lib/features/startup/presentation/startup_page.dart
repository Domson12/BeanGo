import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../core/navigation/app_router.dart';
import '../../../core/providers/global_providers.dart';
@RoutePage()
class StartupPage extends ConsumerStatefulWidget {
  const StartupPage({super.key});

  @override
  ConsumerState<StartupPage> createState() => _StartupPageState();
}

class _StartupPageState extends ConsumerState<StartupPage> {
  bool _navigated = false;

  @override
  Widget build(BuildContext context) {
    ref.listen<AsyncValue<User?>>(
      authStateProvider,
          (previous, next) async {
        if (_navigated) return;
        final prefs = await SharedPreferences.getInstance();
        final seenOnboarding = prefs.getBool('onboarding_complete') ?? false;

        next.whenData((user) {
          if (!mounted || _navigated) return;
          _navigated = true;

          Future.microtask(() {
            if (!seenOnboarding) {
              context.router.replaceAll([const OnboardingRoute()]);
            } else if (user != null) {
              context.router.replaceAll([const DashboardRoute()]);
            } else {
              context.router.replaceAll([const AuthRoute()]);
            }
          });
        });
      },
    );

    return const Scaffold(
      body: Center(child: CircularProgressIndicator()),
    );
  }
}
