import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'app_router.dart';

part 'navigation_provider.g.dart';

@riverpod
AppRouter appRouter(Ref ref) => AppRouter();
