import 'package:alvamind_library/app/asset/app_assets.dart';
import 'package:alvamind_library/app/theme/app_sizes.dart';
import 'package:alvamind_library/app/theme/app_text_style.dart';
import 'package:alvamind_library/widget/molecule/app_card_container.dart';
import 'package:alvamind_library/widget/molecule/app_long_card.dart';
import 'package:alvamind_library/widget/molecule/app_tags.dart';
import 'package:flutter/material.dart';

import '../../../app/theme/app_colors.dart';

class NotificationCard extends StatelessWidget {
  final String title;
  final String dateNotification;
  final String timeNotification;
  final String textNotification;
  final bool? isNew;

  const NotificationCard({
    required this.dateNotification,
    required this.timeNotification,
    required this.textNotification,
    required this.title,
    this.isNew = false,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AppCardContainer(
      padding: EdgeInsets.all(0),
      backgroundColor: AppColors.transparent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppLongCard(padding: EdgeInsets.all(0), children: [
            Expanded(
              child: Row(
                children: [
                  const CircleAvatar(
                    maxRadius: 25,
                    backgroundColor: AppColors.blueLv5,
                    child: Icon(
                      CustomIcon.document_icon,
                      color: AppColors.primary,
                    ),
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
                          style: AppTextStyle.bold(size: 20),
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
          ]),
          SizedBox(
            height: AppSizes.padding,
          ),
          Text(
            textNotification,
            style: AppTextStyle.regular(size: 14),
          )
        ],
      ),
    );
  }
}
