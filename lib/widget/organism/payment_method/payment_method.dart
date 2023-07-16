import 'package:flutter/material.dart';

import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_sizes.dart';
import '../../../app/theme/app_text_style.dart';
import '../../atom/app_image.dart';
import '../../molecule/app_icon_button.dart';
import '../../molecule/app_long_card.dart';
import '../../molecule/app_tags.dart';

class PaymentCard extends StatelessWidget {
  final bool? withTags;
  final String? image;
  final IconData? icon;
  final Color? iconColor;
  final Color? backgroundColor;
  final String title;
  final String? subtitle;
  final Color? titleColor;
  final Color? subtitleColor;
  final String? textTags;
  final Widget? rightButton;
  final void Function()? onTap;
  final void Function()? functionIconButton;

  const PaymentCard({
    super.key,
    this.icon,
    this.functionIconButton,
    this.image,
    this.onTap,
    this.subtitle,
    this.subtitleColor,
    this.titleColor,
    this.withTags = false,
    this.textTags,
    this.iconColor,
    this.backgroundColor,
    this.rightButton,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: AppLongCard(
        backgroundColor: backgroundColor,
        children: [
          Row(
            children: [
              AppImage(
                image: image ?? '',
                imgProvider: ImgProvider.assetImage,
                width: 32,
              ),
              SizedBox(
                width: AppSizes.padding,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: AppTextStyle.bold(
                      size: 18,
                    ),
                  ),
                  subtitle != null
                      ? SizedBox(
                          height: AppSizes.padding / 2,
                        )
                      : const SizedBox.shrink(),
                  subtitle != null
                      ? Text(
                          subtitle!,
                          style: AppTextStyle.regular(
                            size: 14,
                            color: AppColors.blackLv5,
                          ),
                        )
                      : const SizedBox.shrink(),
                ],
              ),
            ],
          ),
          Row(
            children: [
              withTags == false ? const SizedBox.shrink() : AppTags(text: textTags ?? ''),
              rightButton ??
                  AppIconButton(
                    icon: Icon(
                      icon ?? Icons.circle_outlined,
                      color: iconColor ?? AppColors.primary,
                    ),
                    buttonColor: Colors.transparent,
                    onTap: functionIconButton ?? () {},
                  )
            ],
          ),
        ],
      ),
    );
  }
}
