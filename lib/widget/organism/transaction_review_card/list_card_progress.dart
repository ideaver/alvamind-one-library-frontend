import 'package:flutter/material.dart';

import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_sizes.dart';
import '../../../app/theme/app_text_style.dart';
import '../../molecule/app_icon_button.dart';
import '../../molecule/app_long_card.dart';
import '../../molecule/app_tags.dart';

class ListCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData? rightIcon;
  final IconData? leftIcon;
  final String? textTags;
  final void Function()? functionLeftIcon;
  const ListCard({
    super.key,
    required this.title,
    required this.subtitle,
    this.rightIcon,
    this.leftIcon,
    this.textTags,
    this.functionLeftIcon,
  });

  @override
  Widget build(BuildContext context) {
    return AppLongCard(
      backgroundColor: AppColors.white,
      boxShadow: const [
        BoxShadow(
          color: AppColors.blackLv7,
          offset: Offset(0, 4),
          blurRadius: 60,
          spreadRadius: 0,
        ),
      ],
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              leftIcon,
              color: AppColors.primary,
            ),
            SizedBox(
              width: AppSizes.padding,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  subtitle,
                  style: AppTextStyle.medium(size: 14),
                ),
                Text(
                  title,
                  style: AppTextStyle.bold(size: 18),
                ),
              ],
            ),
          ],
        ),
        Row(
          children: [
            AppTags(
              text: textTags ?? '',
              color: AppColors.white,
              textColor: AppColors.primary,
              borderColor: AppColors.primary,
              borderWidth: 1,
            ),
            SizedBox(width: AppSizes.padding / 4),
            AppIconButton(
              padding: const EdgeInsets.all(0),
              buttonColor: AppColors.transparent,
              icon: Icon(rightIcon),
              onTap: functionLeftIcon ?? () {},
            )
          ],
        )
      ],
    );
  }
}
