import 'package:flutter/material.dart';
import 'package:whatsapp_messenger/common/utils/app_colors.dart';

extension ExtendedTheme on BuildContext {
  CustomThemeExtension get theme {
    return Theme.of(this).extension<CustomThemeExtension>()!;
  }
}

class CustomThemeExtension extends ThemeExtension<CustomThemeExtension> {
  static const lightMode = CustomThemeExtension(
    circleImageColor: Color(0xFF25D366),
    greyColor: AppColors.greyLight,
    blueColor: AppColors.blueLight,
    langSelectorBgColor: Color(0xFFF7F8FA),
    langSelectorHighlightColor: Color(0xFFE8E8ED),
  );

  static const darkMode = CustomThemeExtension(
    circleImageColor: AppColors.greenDark,
    greyColor: AppColors.greyDark,
    blueColor: AppColors.blueDark,
    langSelectorBgColor: Color(0xFF182229),
    langSelectorHighlightColor: Color(0xFF09141A),
  );

  final Color? circleImageColor;
  final Color? greyColor;
  final Color? blueColor;
  final Color? langSelectorBgColor;
  final Color? langSelectorHighlightColor;

  const CustomThemeExtension({
    this.circleImageColor,
    this.greyColor,
    this.blueColor,
    this.langSelectorBgColor,
    this.langSelectorHighlightColor,
  });

  @override
  ThemeExtension<CustomThemeExtension> copyWith({
    Color? circleImageColor,
    Color? greyColor,
    Color? blueColor,
    Color? langSelectorBgColor,
    Color? langSelectorHighlightColor,
  }) {
    return CustomThemeExtension(
      circleImageColor: circleImageColor ?? this.circleImageColor,
      greyColor: greyColor ?? this.greyColor,
      blueColor: blueColor ?? this.blueColor,
      langSelectorBgColor: langSelectorBgColor ?? this.langSelectorBgColor,
      langSelectorHighlightColor:
          langSelectorHighlightColor ?? this.langSelectorHighlightColor,
    );
  }

  @override
  ThemeExtension<CustomThemeExtension> lerp(
      covariant ThemeExtension<CustomThemeExtension>? other, double t) {
    if (other is! CustomThemeExtension) {
      return this;
    }

    return CustomThemeExtension(
      circleImageColor: Color.lerp(circleImageColor, other.circleImageColor, t),
      greyColor: Color.lerp(greyColor, other.greyColor, t),
      blueColor: Color.lerp(blueColor, other.blueColor, t),
      langSelectorBgColor:
          Color.lerp(langSelectorBgColor, other.langSelectorBgColor, t),
      langSelectorHighlightColor: Color.lerp(
          langSelectorHighlightColor, other.langSelectorHighlightColor, t),
    );
  }
}
