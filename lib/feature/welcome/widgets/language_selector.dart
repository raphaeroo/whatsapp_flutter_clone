import 'package:flutter/material.dart';
import 'package:whatsapp_messenger/common/extensions/custom_theme_extension.dart';
import 'package:whatsapp_messenger/common/utils/app_colors.dart';

class LanguageSelector extends StatelessWidget {
  const LanguageSelector({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: context.theme.langSelectorBgColor,
      borderRadius: BorderRadius.circular(20),
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(20),
        splashFactory: NoSplash.splashFactory,
        highlightColor: context.theme.langSelectorHighlightColor,
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.language, color: AppColors.greenDark),
              SizedBox(width: 10),
              Text('English', style: TextStyle(color: AppColors.greenDark)),
              SizedBox(width: 10),
              Icon(Icons.keyboard_arrow_down, color: AppColors.greenDark),
            ],
          ),
        ),
      ),
    );
  }
}
