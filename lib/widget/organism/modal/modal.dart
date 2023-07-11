import 'package:flutter/material.dart';

import '../../../app/asset/app_assets.dart';
import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_sizes.dart';
import '../../../app/theme/app_text_style.dart';
import '../../atom/app_image.dart';
import '../../molecule/app_button.dart';

class AppModal extends StatelessWidget {
  final String? image;
  final IconData? icon;

  final Color? backgroundColor;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final BorderRadiusGeometry? borderRadius;
  final String title;
  final String subtitle;
  final Color? titleColor;
  final Color? subtitleColor;

  final Axis? directionButton;
  final void Function()? functionButton;
  final void Function()? functionSecondButton;

  const AppModal({
    super.key,
    this.backgroundColor,
    this.borderRadius,
    this.directionButton,
    this.functionButton,
    this.functionSecondButton,
    this.icon,
    this.image,
    this.margin,
    this.padding,
    required this.subtitle,
    this.subtitleColor,
    required this.title,
    this.titleColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding ?? EdgeInsets.all(AppSizes.padding * 2),
      decoration: BoxDecoration(
        color: backgroundColor ?? AppColors.white,
        borderRadius: borderRadius ?? BorderRadius.circular(40),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const AppImage(
            image: AppAssets.info,
            imgProvider: ImgProvider.assetImage,
            width: 200,
          ),
          SizedBox(height: AppSizes.padding * 2),
          Text(
            title,
            style: AppTextStyle.bold(size: 24, color: titleColor ?? Colors.white),
          ),
          SizedBox(height: AppSizes.padding * 1.5),
          Text(
            subtitle,
            textAlign: TextAlign.center,
            style: AppTextStyle.regular(size: 16, color: subtitleColor ?? Colors.white),
          ),
          SizedBox(height: AppSizes.padding * 2),
          Flex(
            direction: directionButton ?? Axis.vertical,
            children: [
              AppButton(
                onTap: functionButton ?? () {},
                text: 'button',
                rounded: true,
              ),
              SizedBox(height: AppSizes.padding / 1.5),
              AppButton(
                onTap: functionSecondButton ?? () {},
                text: 'Button',
                textColor: AppColors.primary,
                buttonColor: AppColors.blueLv5,
                rounded: true,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
