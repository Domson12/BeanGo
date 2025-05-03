import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppColorsLight implements AppColors {
  @override
  Color get primaryBase => const Color(0xFFC67C4E);

  @override
  Color get primaryMain => const Color(0xFFA85C3E);

  @override
  Color get primaryDark => const Color(0xFF5D4037);

  @override
  Color get secondaryLight => const Color(0xFFFFEBEB);

  @override
  Color get secondaryBase => const Color(0xFFEDD6C8);

  @override
  Color get primaryText => const Color(0xFF313131);

  @override
  Color get secondaryText => const Color(0xFF313131);

  @override
  Color get outline => const Color(0xFFE3E3E3);

  @override
  Color get disabled => const Color(0xFFBDBDBD);

  @override
  Color get background => const Color(0xFFF9F2ED);

  @override
  Color get white => const Color(0xFFFFFFFF);

  @override
  Color get black => const Color(0xFF000000);

  @override
  Color get errorMain => const Color(0xFFD32F2F);

  @override
  Color get backgroundPrimary => const Color(0xFFFFFFFF);

  @override
  Color get backgroundSecondary => const Color(0xFFF7F7F7);
}
