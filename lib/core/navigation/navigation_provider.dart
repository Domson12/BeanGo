import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'app_router.dart';

part 'navigation_provider.g.dart';

@riverpod
AppRouter appRouter(AppRouterRef ref) => AppRouter();
