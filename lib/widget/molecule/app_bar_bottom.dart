import 'package:alvamind_library/app/theme/app_sizes.dart';
import 'package:flutter/material.dart';

import '../../app/theme/app_colors.dart';
import '../../app/theme/app_text_style.dart';
import 'app_icon_button.dart';

class AppBarBottom extends StatelessWidget {
  final String text;
  final Color? textColor;
  final Color? backgroundColorIcon;
  final IconData icon;
  final Color? iconColor;
  final Color? buttonColor;
  final void Function()? functionButton;

  const AppBarBottom({
    super.key,
    required this.text,
    required this.icon,
    this.textColor,
    this.iconColor,
    this.backgroundColorIcon,
    this.functionButton,
    this.buttonColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(AppSizes.padding / 1.4),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: buttonColor ?? AppColors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AppIconButton(
            padding: EdgeInsets.all(2),
            icon: Icon(
              icon,
              color: iconColor ?? AppColors.blackLv6,
            ),
            onTap: functionButton ?? () {},
            buttonColor: AppColors.transparent,
          ),
          Text(
            text,
            style: AppTextStyle.medium(
              size: 10,
              color: textColor ?? AppColors.blackLv6,
            ),
          )
        ],
      ),
    );
  }
}
