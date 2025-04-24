import 'package:bean_go/core/navigation/guards/auth_guard.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'app_router.dart';

part 'navigation_provider.g.dart';

@riverpod
AppRouter appRouter(Ref ref) => AppRouter(
      authGuard: AuthGuard(ref),
    );
