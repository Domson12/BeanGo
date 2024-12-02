import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/locale/locale_provider.dart';
import '../../../core/services/hive_service.dart';
import '../../../core/theme/theme_provider.dart';
import 'settings_model.dart';

part 'settings_repository.g.dart';

@riverpod
SettingsRepository settingsRepository(Ref ref) => SettingsRepository(ref);

class SettingsRepository {
  SettingsRepository(this.ref);

  final Ref ref;

  final _hiveBox = HiveBoxName.settings.name;
  final _hiveKey = 0;

  Future<SettingsModel?> getSettings() async {
    final box = await Hive.openBox<SettingsModel>(_hiveBox);
    var settingsModel = box.get(_hiveKey);

    if (settingsModel == null) {
      settingsModel = SettingsModel.empty();
      box.put(_hiveKey, settingsModel);
    }

    return settingsModel;
  }

  Future<void> setBiometrics({required bool enabled}) async {
    final settings = await getSettings();
    settings?.biometrics = enabled;
    settings?.save();
  }

  Future<void> setTheme({required ThemeType theme}) async {
    final settings = await getSettings();
    settings?.theme = theme;
    settings?.save();
    await this.theme();
  }

  Future<void> setLanguage({required String language}) async {
    final settings = await getSettings();
    settings?.language = language;
    settings?.save();
    await locale();
  }

  Future<void> setOnboarding({required bool onboarding}) async {
    final settings = await getSettings();
    settings?.onboarding = onboarding;
    settings?.save();
  }

  Future<void> theme({SettingsModel? settingsModel}) async {
    final settings = settingsModel ?? await getSettings();
    final themeMode = settings?.theme.mode ?? ThemeMode.system;

    ref.read(appThemeStateNotifier).setTheme(theme: themeMode);
  }

  Future<void> locale({SettingsModel? settingsModel}) async {
    final settings = settingsModel ?? await getSettings();
    final code = settings?.language;

    ref.read(appLocaleStateNotifier).setLocale(code: code);
  }
}
