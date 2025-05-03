import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'core/locale/locale_provider.dart';
import 'core/navigation/navigation_provider.dart';
import 'core/providers/global_providers.dart';
import 'core/theme/app_theme.dart';
import 'core/theme/theme_provider.dart';
import 'core/utils/custom_logger.dart';
import 'firebase_options.dart';
import 'gen/l10n.dart';

final logger = CustomLogger();

Future<void> runMainApp() async {
  WidgetsFlutterBinding.ensureInitialized();

  final prefs = await SharedPreferences.getInstance();

  final container = ProviderContainer(
    overrides: [
      sharedPreferencesProvider.overrideWithValue(prefs),
    ],
  );

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

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
      scaffoldMessengerKey: ref.watch(scaffoldMessengerProvider).key,
      supportedLocales: S.delegate.supportedLocales,
    );
  }
}
