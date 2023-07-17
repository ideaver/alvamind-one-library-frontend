import 'package:flutter/material.dart';

import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_sizes.dart';
import '../../../app/theme/app_text_style.dart';
import '../../molecule/app_card_container.dart';
import '../../molecule/app_icon_button.dart';
import '../../molecule/app_progress_line.dart';
import '../../molecule/app_tags.dart';

class StatusCardComplain extends StatelessWidget {
  final String tagStatus;
  final double countStatus;
  final void Function() functionButton;

  const StatusCardComplain({
    Key? key,
    required this.countStatus,
    required this.functionButton,
    required this.tagStatus,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AppCardContainer(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Status Komplain',
                style: AppTextStyle.bold(size: 18),
              ),
              Row(
                children: [
                  AppTags(
                    text: tagStatus,
                    borderWidth: 1,
                    borderColor: AppColors.primary,
                    color: AppColors.transparent,
                    textColor: AppColors.primary,
                  ),
                  SizedBox(
                    width: AppSizes.padding / 4,
                  ),
                  AppIconButton(
                      padding: EdgeInsets.all(AppSizes.padding / 6),
                      buttonColor: AppColors.transparent,
                      icon: Icon(
                        Icons.chevron_right,
                      ),
                      onTap: functionButton)
                ],
              ),
            ],
          ),
          SizedBox(
            height: AppSizes.padding,
          ),
          AppProgressLine(
            value: countStatus,
            maxValue: 100,
            label: 'Progress',
          ),
        ],
      ),
    );
  }
}
