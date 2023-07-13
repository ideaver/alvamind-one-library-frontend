import 'package:flutter/material.dart';

import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_sizes.dart';
import '../../../app/theme/app_text_style.dart';

import '../../molecule/app_button.dart';

class ItemCardListSelectedDone extends StatelessWidget {
  final String title;
  final EdgeInsetsGeometry? padding;
  final bool? isSelected;
  final String? morePayment;
  final String? shuttlePayment;
  final String? textButton;

  final void Function()? functionButton;

  const ItemCardListSelectedDone({
    super.key,
    required this.title,
    this.padding,
    this.isSelected,
    this.morePayment,
    this.shuttlePayment,
    this.functionButton,
    this.textButton,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Padding(
        padding: isSelected == true ? EdgeInsets.all(AppSizes.padding / 3) : EdgeInsets.all(0),
        child: Column(
          children: [
            Container(
              padding: padding ?? EdgeInsets.all(AppSizes.padding),
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              child: horizontalMode(),
            ),
            isSelected == true ? SizedBox(height: AppSizes.padding / 2) : SizedBox.shrink(),
            isSelected == true
                ? AppButton(
                    padding: EdgeInsets.symmetric(horizontal: AppSizes.padding, vertical: AppSizes.padding / 4),
                    text: textButton ?? '',
                    borderColor: AppColors.primary,
                    borderWidth: 0,
                    onTap: functionButton ?? () {},
                  )
                : SizedBox.shrink(),
            isSelected == true ? SizedBox(height: AppSizes.padding / 2) : SizedBox.shrink(),
          ],
        ),
      ),
    );
  }

  Widget horizontalMode() {
    return Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            headItem(),
            SizedBox(
              height: AppSizes.padding / 2,
            ),
            subItem(),
          ],
        ),
        // buttonDown()
      ],
    );
  }

  Widget headItem() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(Icons.check_box_outlined),
        SizedBox(
          width: AppSizes.padding / 2,
        ),
        Text(
          title,
          style: AppTextStyle.bold(size: 20),
        ),
      ],
    );
  }

  Widget subItem() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Biaya lain lain:',
              style: AppTextStyle.bold(
                size: 14,
              ),
            ),
            Text(
              morePayment ?? '',
              style: AppTextStyle.bold(
                size: 14,
              ),
            )
          ],
        ),
        SizedBox(
          height: AppSizes.padding / 4,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Biaya Antar Jemput',
              style: AppTextStyle.bold(
                size: 14,
              ),
            ),
            Text(
              shuttlePayment ?? '',
              style: AppTextStyle.bold(
                size: 14,
              ),
            )
          ],
        ),
      ],
    );
  }
}
