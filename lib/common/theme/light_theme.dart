import 'package:flutter/material.dart';
import 'package:whatsapp_messenger/common/extensions/custom_theme_extension.dart';
import 'package:whatsapp_messenger/common/utils/app_colors.dart';

ThemeData lightTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    extensions: [CustomThemeExtension.lightMode],
    // ignore: deprecated_member_use
    backgroundColor: AppColors.backgroundLight,
    scaffoldBackgroundColor: AppColors.backgroundLight,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.greenLight,
          foregroundColor: AppColors.backgroundLight,
          splashFactory: NoSplash.splashFactory,
          elevation: 0,
          shadowColor: Colors.transparent),
    ),
  );
}
