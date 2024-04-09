import 'package:flutter/material.dart';
import 'package:whatsapp_messenger/common/extensions/custom_theme_extension.dart';
import 'package:whatsapp_messenger/common/utils/app_colors.dart';

ThemeData darkTheme() {
  final ThemeData base = ThemeData.dark();
  return base.copyWith(
    extensions: [CustomThemeExtension.darkMode],
    // ignore: deprecated_member_use
    backgroundColor: AppColors.backgroundDark,
    scaffoldBackgroundColor: AppColors.backgroundDark,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.greenDark,
          foregroundColor: AppColors.backgroundDark,
          splashFactory: NoSplash.splashFactory,
          elevation: 0,
          shadowColor: Colors.transparent),
    ),
  );
}
