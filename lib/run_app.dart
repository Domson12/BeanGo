import 'package:bean_go/core/widgets/result_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'core/locale/locale_provider.dart';
import 'core/navigation/navigation_provider.dart';
import 'core/theme/app_theme.dart';
import 'core/theme/theme_provider.dart';
import 'core/utils/custom_logger.dart';
import 'gen/l10n.dart';

final logger = CustomLogger();

Future<void> runMainApp() async {
  final container = ProviderContainer(overrides: []);

  FlutterError.onError = (error) {
    logger
      ..logError(error.exceptionAsString())
      ..logError(error.context.toString())
      ..logError(error.stack.toString());
  };

  runApp(
    UncontrolledProviderScope(
      container: container,
      child: const MainApp(),
    ),
  );
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    MediaQuery.platformBrightnessOf(context);
    return MaterialApp.router(
      routerDelegate: ref.watch(appRouterProvider).delegate(),
      routeInformationParser: ref.watch(appRouterProvider).defaultRouteParser(),
      routeInformationProvider:
          ref.watch(appRouterProvider).routeInfoProvider(),
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ref.watch(appThemeStateNotifier).themeMode,
      locale: ref.watch(appLocaleStateNotifier).locale,
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      builder: (context, child) {
        return ResultWrapper(child: child);
      },
      supportedLocales: S.delegate.supportedLocales,
    );
  }
}
