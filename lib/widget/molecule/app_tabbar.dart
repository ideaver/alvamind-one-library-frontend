import 'package:alvamind_library/app/theme/app_colors.dart';
import 'package:alvamind_library/widget/molecule/app_ink_container.dart';
import 'package:flutter/material.dart';

import '../../app/theme/app_sizes.dart';
import '../../app/theme/app_text_style.dart';

class AppTabBar extends StatelessWidget {
  final String text;
  final Color? textColor;
  final double? fontSize;
  final double? leftIconSize;
  final double? rightIconSize;
  final IconData? leftIcon;
  final IconData? rightIcon;
  final Color? leftIconColor;
  final Color? rightIconColor;
  final Color? dividerColor;
  final EdgeInsetsGeometry? dividerPadding;
  final void Function()? onTap;

  const AppTabBar({
    super.key,
    required this.text,
    this.rightIconSize,
    this.leftIconSize,
    this.fontSize,
    this.leftIcon,
    this.rightIcon,
    this.textColor,
    this.leftIconColor,
    this.dividerColor,
    this.rightIconColor,
    this.dividerPadding,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return AppInkContainer(
      padding: EdgeInsets.all(0),
      onTap: onTap ?? () {},
      borderRadius: BorderRadius.circular(0),
      child: Container(
        padding: EdgeInsets.only(
          bottom: AppSizes.padding / 2,
          right: AppSizes.padding,
          left: AppSizes.padding,
        ),
        decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(
          color: dividerColor ?? AppColors.primary,
          width: 2,
        ))),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            leftIcon == null
                ? const SizedBox.shrink()
                : Icon(
                    leftIcon,
                    size: leftIconSize,
                    color: leftIconColor,
                  ),
            leftIcon == null
                ? const SizedBox.shrink()
                : SizedBox(
                    width: AppSizes.padding / 2,
                  ),
            Text(
              text,
              style: AppTextStyle.bold(
                size: fontSize ?? 18,
                color: textColor,
              ),
            ),
            rightIcon == null
                ? const SizedBox.shrink()
                : SizedBox(
                    width: AppSizes.padding / 2,
                  ),
            rightIcon == null
                ? const SizedBox.shrink()
                : Icon(
                    rightIcon,
                    size: rightIconSize,
                    color: rightIconColor,
                  ),
          ],
        ),
      ),
    );
  }
}
