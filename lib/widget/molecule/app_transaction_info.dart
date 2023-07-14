import 'package:flutter/material.dart';

import '../../app/theme/app_colors.dart';
import '../../app/theme/app_sizes.dart';
import '../../app/theme/app_text_style.dart';
import '../atom/app_dotted_border.dart';
import 'app_icon_button.dart';
import 'app_tags.dart';

class AppTransactionInfo extends StatelessWidget {
  final String transactionId;
  final String transactionStatus;
  final Color transactionStatusColor;
  final Function()? onTapCopyButton;

  const AppTransactionInfo({
    Key? key,
    required this.transactionId,
    required this.transactionStatus,
    this.transactionStatusColor = AppColors.primary,
    this.onTapCopyButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppDottedBorder(
      color: AppColors.purpleLv1,
      childPadding: EdgeInsets.all(AppSizes.padding),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Transaction ID',
                style: AppTextStyle.bodyMedium(
                  fontWeight: AppFontWeight.medium,
                ),
              ),
              Row(
                children: [
                  Text(
                    transactionId,
                    style: AppTextStyle.bodyLarge(
                      fontWeight: AppFontWeight.semibold,
                    ),
                  ),
                  const SizedBox(width: 8),
                  AppIconButton(
                    padding: EdgeInsets.zero,
                    buttonColor: AppColors.transparent,
                    icon: Icon(
                      Icons.file_copy_outlined,
                      color: transactionStatusColor,
                      size: 18,
                    ),
                    onTap: onTapCopyButton ?? () {},
                  )
                ],
              ),
            ],
          ),
          SizedBox(height: AppSizes.padding),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Status',
                style: AppTextStyle.bodyMedium(
                  fontWeight: AppFontWeight.medium,
                ),
              ),
              AppTags(
                text: transactionStatus,
                textColor: transactionStatusColor,
                borderWidth: 1,
                borderColor: transactionStatusColor,
                color: AppColors.transparent,
              )
            ],
          )
        ],
      ),
    );
  }
}
