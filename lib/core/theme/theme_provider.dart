import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'app_theme.dart';

final appThemeStateNotifier = ChangeNotifierProvider((ref) => AppThemeState());

class AppThemeState extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.system;

  void setTheme({required ThemeMode theme, bool initial = false}) {
    AppTheme.themeMode = theme;
    themeMode = theme;

    if (initial) {
      return;
    }

    notifyListeners();
  }
}
