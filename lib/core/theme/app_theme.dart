import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

import '../../gen/fonts.gen.dart';
import 'app_input_decoration_theme.dart';
import 'colors/app_colors.dart';
import 'colors/app_colors_light.dart';

class AppTheme {
  static ThemeMode themeMode = ThemeMode.system;
  static const String appFont = FontFamily.sora;

  static AppColors get colors => AppColorsLight();

  static bool isDarkMode() {
    return themeMode == ThemeMode.dark ||
        (themeMode == ThemeMode.system &&
            SchedulerBinding.instance.platformDispatcher.platformBrightness ==
                Brightness.dark);
  }

  static ThemeData get lightTheme => ThemeData(
        brightness: Brightness.light,
        useMaterial3: true,
        textTheme: TextTheme(
          titleLarge: TextStyle(
            // H1
            fontSize: 48,
            height: 56 / 48,
            fontWeight: FontWeight.w600,
            fontFamily: AppTheme.appFont,
            color: colors.primaryText,
          ),
          titleMedium: TextStyle(
            // H3
            fontSize: 32,
            height: 40 / 32,
            fontWeight: FontWeight.w600,
            fontFamily: AppTheme.appFont,
            color: colors.primaryText,
          ),
          titleSmall: TextStyle(
            // H5
            fontSize: 22,
            height: 30 / 22,
            fontWeight: FontWeight.w600,
            fontFamily: AppTheme.appFont,
            color: colors.primaryText,
          ),
          bodyLarge: TextStyle(
            fontSize: 16,
            height: 24 / 16,
            fontWeight: FontWeight.w400,
            fontFamily: AppTheme.appFont,
            color: colors.primaryText,
          ),
          bodyMedium: TextStyle(
            fontSize: 14,
            height: 22 / 14,
            fontWeight: FontWeight.w400,
            fontFamily: AppTheme.appFont,
            //   letterSpacing: 0.1,
            color: colors.primaryText,
          ),
          bodySmall: TextStyle(
            fontSize: 10,
            height: 1.4,
            fontWeight: FontWeight.w400,
            fontFamily: AppTheme.appFont,
            color: colors.primaryText,
          ),
          labelLarge: TextStyle(
            // Button/S 14px26h
            fontSize: 14,
            height: 26 / 14,
            fontWeight: FontWeight.w600,
            fontFamily: AppTheme.appFont,
            color: colors.primaryText,
          ),
          labelMedium: const TextStyle(
            // Caption
            fontSize: 12,
            height: 15 / 12,
            fontWeight: FontWeight.w600,
            fontFamily: AppTheme.appFont,
          ),
          labelSmall: TextStyle(
            // Subtitle2 /12px20h
            fontSize: 12,
            height: 20 / 12,
            fontWeight: FontWeight.w400,
            fontFamily: AppTheme.appFont,
            color: colors.primaryText,
          ),
          displayLarge: TextStyle(
            fontSize: 24,
            height: 26.4 / 24,
            fontWeight: FontWeight.w600,
            fontFamily: AppTheme.appFont,
            color: colors.primaryText,
          ),
          displayMedium: TextStyle(
            fontSize: 18,
            height: 1.4,
            fontWeight: FontWeight.w600,
            fontFamily: AppTheme.appFont,
            color: colors.primaryText,
          ),
          displaySmall: TextStyle(
            fontSize: 14,
            height: 1.3,
            fontWeight: FontWeight.w600,
            fontFamily: AppTheme.appFont,
            color: colors.primaryText,
          ),
        ),
        colorScheme: ColorScheme(
          brightness: Brightness.light,
          primary: colors.primaryDark,
          onPrimary: colors.white,
          secondary: colors.secondaryLight,
          onSecondary: colors.secondaryBase,
          error: colors.errorMain,
          onError: colors.white,
          onSurface: colors.primaryDark,
          surface: colors.backgroundPrimary,
        ),
        dividerColor: colors.outline,
        iconTheme: IconThemeData(
          color: colors.primaryDark,
        ),
        scaffoldBackgroundColor: colors.white,
        navigationBarTheme: NavigationBarThemeData(
          labelTextStyle: WidgetStateProperty.resolveWith<TextStyle>(
            (Set<WidgetState> states) {
              if (states.contains(WidgetState.selected)) {
                return TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w600,
                  fontFamily: AppTheme.appFont,
                  color: colors.primaryMain,
                );
              }
              return TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w400,
                fontFamily: AppTheme.appFont,
                color: colors.outline,
              );
            },
          ),
        ),
    searchBarTheme: SearchBarThemeData(
      backgroundColor: WidgetStateProperty.all(Colors.white),
      elevation: WidgetStateProperty.all(0),
      shadowColor: WidgetStateProperty.all(Colors.transparent),
      surfaceTintColor: WidgetStateProperty.all(Colors.white),
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32),
        ),
      ),
      side: WidgetStateProperty.all(
        BorderSide(color: AppTheme.colors.outline, width: 1),
      ),
      padding: WidgetStateProperty.all(
        EdgeInsets.symmetric(horizontal: 16),
      ),
      textStyle: WidgetStateProperty.all(
        TextStyle(
          fontSize: 14,
          fontFamily: AppTheme.appFont,
          fontWeight: FontWeight.w400,
          color: AppTheme.colors.primaryText,
        ),
      ),
      overlayColor: WidgetStateProperty.all(Colors.transparent),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.all(16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
            backgroundColor: colors.primaryMain,
            foregroundColor: colors.white,
            textStyle: const TextStyle(
              fontSize: 14,
              height: 26 / 14,
              fontWeight: FontWeight.w600,
              fontFamily: AppTheme.appFont,
            ),
            elevation: 0,
          ),
        ),
        inputDecorationTheme: AppInputDecorationTheme.inputDecorationTheme,
        sliderTheme: SliderThemeData(
          trackHeight: 6,
          activeTrackColor: colors.primaryDark,
          inactiveTrackColor: colors.backgroundSecondary,
          thumbColor: Colors.transparent,
          thumbShape: SliderComponentShape.noThumb,
        ),
        checkboxTheme: CheckboxThemeData(
          fillColor: WidgetStateProperty.resolveWith((states) {
            if (states.contains(WidgetState.selected)) {
              return colors.primaryMain;
            }
            return Colors.white;
          }),
          side: BorderSide(color: colors.secondaryText, width: 2),
        ),
      );

  static ThemeData get darkTheme =>
      lightTheme.copyWith(brightness: Brightness.dark);

  static TextStyle get whiteButtonStyleTextStyle => TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        fontFamily: AppTheme.appFont,
        color: colors.primaryBase,
      );

  static TextStyle get primaryBaseButtonStyleTextStyle => TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        fontFamily: AppTheme.appFont,
        color: colors.white,
      );
}
