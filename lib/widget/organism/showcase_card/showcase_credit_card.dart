import 'package:alvamind_library/widget/molecule/app_tags.dart';
import 'package:flutter/material.dart';

import '../../../app/asset/app_assets.dart';
import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_sizes.dart';
import '../../../app/theme/app_text_style.dart';

import '../../molecule/app_button.dart';
import '../../molecule/app_card_container.dart';

class UserCreditCard extends StatelessWidget {
  final String numberCard;
  final String nameCard;
  final String expiryDateCard;
  final void Function() functionEditButton;

  const UserCreditCard({
    super.key,
    required this.numberCard,
    required this.expiryDateCard,
    required this.nameCard,
    required this.functionEditButton,
  });

  @override
  Widget build(BuildContext context) {
    return AppCardContainer(
        padding: EdgeInsets.all(AppSizes.padding * 2),
        borderRadius: BorderRadius.circular(40),
        backgroundColor: AppColors.blueLv1,
        gradient: const LinearGradient(colors: [
          AppColors.blueLv2,
          AppColors.blueLv1,
        ]),
        child: Stack(
          children: [
            content(),
          ],
        ));
  }

  Widget content() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              AppAssets.logoCreditCard,
            ),
            AppTags(
              text: 'Utama',
              color: AppColors.orangeLv1,
            )
          ],
        ),
        SizedBox(height: AppSizes.padding * 2),
        Text(
          numberCard,
          style: AppTextStyle.bold(size: 30, color: AppColors.white),
        ),
        SizedBox(height: AppSizes.padding * 2),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            textContent('Card Holder name', nameCard),
            textContent('Expiry date', expiryDateCard),
            AppButton(
              text: 'Edit',
              padding: EdgeInsets.symmetric(horizontal: AppSizes.padding, vertical: AppSizes.padding / 3),
              buttonColor: AppColors.white,
              textColor: AppColors.primary,
              onTap: functionEditButton,
            )
          ],
        )
      ],
    );
  }

  Widget textContent(String upText, String downText) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          upText,
          style: AppTextStyle.regular(size: 10, color: AppColors.white),
        ),
        SizedBox(height: AppSizes.padding / 4),
        Text(
          downText,
          style: AppTextStyle.bold(size: 14, color: AppColors.white),
        )
      ],
    );
  }
}
