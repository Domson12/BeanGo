import 'package:flutter/material.dart';

class AppDefaults {
  // Padding
  static const EdgeInsets paddingAll8 = EdgeInsets.all(8.0);
  static const EdgeInsets paddingAll16 = EdgeInsets.all(16.0);
  static const EdgeInsets paddingHorizontal16 = EdgeInsets.symmetric(
    horizontal: 16.0,
  );
  static const EdgeInsets paddingVertical12 = EdgeInsets.symmetric(
    vertical: 12.0,
  );
  static const EdgeInsets paddingSymmetric =
      EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.0);

  // Gaps (SizedBoxes)
  static const SizedBox gap4 = SizedBox(height: 4);
  static const SizedBox gap8 = SizedBox(height: 8);
  static const SizedBox gap12 = SizedBox(height: 12);
  static const SizedBox gap16 = SizedBox(height: 16);
  static const SizedBox gap20 = SizedBox(height: 20);
  static const SizedBox gap24 = SizedBox(height: 24);
  static const SizedBox gapH8 = SizedBox(width: 8);
  static const SizedBox gapH16 = SizedBox(width: 16);

  // Border Radius
  static const BorderRadius borderRadius8 = BorderRadius.all(
    Radius.circular(8),
  );
  static const BorderRadius borderRadius12 = BorderRadius.all(
    Radius.circular(12),
  );
  static const BorderRadius borderRadius16 = BorderRadius.all(
    Radius.circular(16),
  );

  // Durations
  static const Duration shortestDuration = Duration(milliseconds: 150);
  static const Duration shortDuration = Duration(milliseconds: 200);
  static const Duration mediumDuration = Duration(milliseconds: 400);
  static const Duration longDuration = Duration(milliseconds: 800);

  // BoxDecoration
  static BoxDecoration defaultBoxDecoration = BoxDecoration(
    color: Colors.white,
    borderRadius: borderRadius12,
    boxShadow: [
      BoxShadow(
        color: Colors.black12,
        blurRadius: 8,
        offset: Offset(0, 4),
      ),
    ],
  );

  // Divider
  static const Divider defaultDivider = Divider(thickness: 1, height: 32);

  // Others
  static const double iconSize = 24.0;
}
