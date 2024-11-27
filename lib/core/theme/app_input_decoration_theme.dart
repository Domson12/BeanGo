import 'package:flutter/material.dart';
import 'app_theme.dart';

abstract class AppInputDecorationTheme {
  static InputDecorationTheme get inputDecorationTheme => InputDecorationTheme(
    filled: true,
    fillColor: AppTheme.colors.white,
    contentPadding: const EdgeInsets.symmetric(
      vertical: 16,
      horizontal: 16,
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(
        color: AppTheme.colors.outline,
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(
        color: AppTheme.colors.outline,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(
        color: AppTheme.colors.primaryText,
        width: 2,
      ),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(
        color: AppTheme.colors.errorMain,
      ),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(
        color: AppTheme.colors.errorMain,
      ),
    ),
    errorStyle: TextStyle(
      fontSize: 12,
      height: 1.3,
      fontWeight: FontWeight.w400,
      fontFamily: AppTheme.appFont,
      color: AppTheme.colors.errorMain,
    ),
    hintStyle: TextStyle(
      fontSize: 14,
      height: 18 / 14,
      fontWeight: FontWeight.w400,
      fontFamily: AppTheme.appFont,
      color: AppTheme.colors.primaryText,
    ),
  );
}
