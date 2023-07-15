import 'package:flutter/material.dart';

import '../../app/asset/app_assets.dart';
import '../../app/theme/app_colors.dart';
import '../../app/theme/app_sizes.dart';
import '../../app/theme/app_text_style.dart';
import '../atom/app_image.dart';
import 'app_icon_button.dart';

class AccountList extends StatelessWidget {
  final String? title;
  final String? subtitle;
  final String? image;
  final void Function()? functionChatButton;
  final void Function()? functionCallButton;

  const AccountList({
    super.key,
    this.functionCallButton,
    this.functionChatButton,
    this.image,
    this.subtitle,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                    image ?? randomImage,
                  ),
                  maxRadius: 25,
                ),
                SizedBox(
                  width: AppSizes.padding,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title ?? '',
                      style: AppTextStyle.bold(size: 18),
                    ),
                    Text(
                      subtitle ?? '',
                      style: AppTextStyle.medium(
                        size: 14,
                        color: AppColors.blackLv5,
                      ),
                    ),
                  ],
                ),
                //
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Flexible(
                        child: AppIconButton(
                          buttonColor: AppColors.transparent,
                          padding: EdgeInsets.all(2),
                          icon: const Icon(
                            CustomIcon.chat_icon,
                            color: AppColors.primary,
                          ),
                          onTap: functionChatButton ?? () {},
                        ),
                      ),
                      SizedBox(
                        width: AppSizes.padding,
                      ),
                      Flexible(
                        child: AppIconButton(
                          padding: EdgeInsets.all(2),
                          buttonColor: AppColors.transparent,
                          icon: const Icon(
                            CustomIcon.contact_icon,
                            color: AppColors.primary,
                          ),
                          onTap: functionChatButton ?? () {},
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
