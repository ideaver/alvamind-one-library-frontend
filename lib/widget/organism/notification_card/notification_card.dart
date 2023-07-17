<<<<<<< HEAD
import 'package:alvamind_library/app/asset/app_assets.dart';
import 'package:alvamind_library/app/theme/app_sizes.dart';
import 'package:alvamind_library/app/theme/app_text_style.dart';
import 'package:alvamind_library/widget/molecule/app_long_card.dart';
import 'package:alvamind_library/widget/molecule/app_tags.dart';
=======
>>>>>>> 9cb27f4523b8b98fc8ac130b505774039781736b
import 'package:flutter/material.dart';

import '../../../app/asset/app_assets.dart';
import '../../../app/theme/app_colors.dart';
<<<<<<< HEAD
import '../../molecule/app_ink_container.dart';
=======
import '../../../app/theme/app_sizes.dart';
import '../../../app/theme/app_text_style.dart';
import '../../molecule/app_card_container.dart';
import '../../molecule/app_long_card.dart';
import '../../molecule/app_tags.dart';
>>>>>>> 9cb27f4523b8b98fc8ac130b505774039781736b

class NotificationCard extends StatelessWidget {
  final String title;
  final String dateNotification;
  final String timeNotification;
  final String textNotification;
  final bool? isNew;
  final Color? backgroundColorIcon;
  final Color? iconColor;
  final IconData? iconNotification;
  final void Function() onTap;

  const NotificationCard({
    required this.dateNotification,
    required this.timeNotification,
    required this.textNotification,
    required this.title,
    required this.onTap,
    this.isNew = false,
    this.backgroundColorIcon,
    this.iconColor,
    this.iconNotification,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AppInkContainer(
      onTap: onTap,
      padding: EdgeInsets.all(2),
      backgroundColor: AppColors.transparent,
      borderRadius: BorderRadius.circular(4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
<<<<<<< HEAD
          AppLongCard(
            padding: EdgeInsets.all(0),
            backgroundColor: AppColors.transparent,
            children: [
              Expanded(
                child: Row(
                  children: [
                    CircleAvatar(
                      maxRadius: 25,
                      backgroundColor: backgroundColorIcon ?? AppColors.blueLv5,
                      child: Icon(
                        iconNotification ?? CustomIcon.document_icon,
                        color: iconColor ?? AppColors.primary,
                      ),
=======
          AppLongCard(padding: EdgeInsets.all(0), children: [
            Expanded(
              child: Row(
                children: [
                  const CircleAvatar(
                    maxRadius: 25,
                    backgroundColor: AppColors.blueLv5,
                    child: Icon(
                      CustomIcon.documentIcon,
                      color: AppColors.primary,
>>>>>>> 9cb27f4523b8b98fc8ac130b505774039781736b
                    ),
                    SizedBox(
                      width: AppSizes.padding,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            title,
                            softWrap: true,
                            maxLines: 2,
                            overflow: TextOverflow.fade,
                            style: AppTextStyle.bold(size: 18),
                          ),
                          SizedBox(
                            height: AppSizes.padding / 3,
                          ),
                          Text(
                            '${dateNotification}  |  ${timeNotification}',
                            style: AppTextStyle.medium(
                              size: 14,
                              color: AppColors.blackLv4,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              isNew == true ? const AppTags(text: 'Baru') : SizedBox.shrink(),
            ],
          ),
          SizedBox(
            height: AppSizes.padding,
          ),
          Text(
            textNotification,
            style: AppTextStyle.regular(size: 14),
          ),
        ],
      ),
    );
  }
}
