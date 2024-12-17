import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import '../../../core/utils/extensions.dart';
import '../../../gen/l10n.dart';

part 'settings_model.g.dart';

@HiveType(typeId: 2)
enum ThemeType {
  @HiveField(0)
  system,
  @HiveField(1)
  light,
  @HiveField(2)
  dark
}

extension ThemeTypeExtension on ThemeType {
  ThemeMode get mode {
    switch (this) {
      case ThemeType.light:
        return ThemeMode.light;
      case ThemeType.dark:
        return ThemeMode.dark;
      default:
        return ThemeMode.system;
    }
  }

  String get label {
    switch (this) {
      case ThemeType.light:
        return S.current.light;
      default:
        return S.current.light;
    }
  }
}

@HiveType(typeId: 1)
class SettingsModel extends HiveObject {
  SettingsModel({
    required this.theme,
    required this.biometrics,
    required this.language,
    required this.onboarding,
  });

  factory SettingsModel.empty() => SettingsModel(
    theme: ThemeType.system,
    biometrics: false,
    language: PlatformLanguageCode.languageCode,
    onboarding: false,
  );

  @HiveField(0)
  ThemeType theme;

  @HiveField(1)
  bool biometrics;

  @HiveField(2)
  String language;

  @HiveField(3, defaultValue: false)
  bool onboarding;

  @override
  String toString() {
    return 'theme: $theme - biometrics: $biometrics - language: $language - onboarding $onboarding';
  }
}
