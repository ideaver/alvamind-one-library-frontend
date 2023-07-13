import 'package:alvamind_library/widget/atom/app_divider.dart';
import 'package:alvamind_library/widget/molecule/app_icon_button.dart';
import 'package:flutter/material.dart';

import '../../../app/asset/app_assets.dart';
import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_sizes.dart';
import '../../../app/theme/app_text_style.dart';
import '../../atom/app_image.dart';
import '../../molecule/app_button.dart';
import '../../molecule/app_card.dart';
import '../../molecule/app_progress_line.dart';
import '../../molecule/app_tags.dart';

class ItemCardListSelected extends StatelessWidget {
  final String title;
  final EdgeInsetsGeometry? padding;
  final bool? isList;
  final bool? isSelected;
  final String? timeWork;
  final String? typeItem;
  final bool? isStatus;
  final String? textPrice;
  final String? statusPrice;
  final String? dateProgress;
  final String? statustProgressText;
  final String? dataProgress;
  final String? textLeftButton;
  final String? textRightButton;
  final String? labelingText;
  final double? labelingCount;
  final String? starImageCount;
  final void Function()? functionRightButton;
  final void Function()? functionLeftButton;

  const ItemCardListSelected({
    super.key,
    required this.title,
    this.padding,
    this.dataProgress,
    this.dateProgress,
    this.isList = false,
    this.statusPrice,
    this.functionLeftButton,
    this.functionRightButton,
    this.labelingText,
    this.labelingCount,
    this.statustProgressText,
    this.textLeftButton,
    this.textPrice,
    this.textRightButton,
    this.starImageCount,
    this.isSelected,
    this.timeWork,
    this.typeItem,
    this.isStatus = false,
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
                    text: 'Dipilih',
                    borderColor: AppColors.primary,
                    rightIcon: Icons.check_box_rounded,
                    borderWidth: 0,
                    onTap: () {},
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
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            imageCard(90, 90),
            SizedBox(
              width: AppSizes.padding,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  headItem(),
                  SizedBox(
                    height: AppSizes.padding / 2,
                  ),
                  Flex(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    direction: Axis.horizontal,
                    children: [
                      subItem(),
                      priceStatus(),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
        isStatus == true ? buttonDown() : const SizedBox.shrink(),
      ],
    );
  }

  Widget buttonDown() {
    return Column(
      children: [
        AppDivider(
          thickness: 2,
          color: AppColors.blackLv8,
          padding: EdgeInsets.symmetric(vertical: AppSizes.padding),
        ),
        //
        // isList
        isStatus == true
            ? AppProgressLine(
                value: labelingCount ?? 20,
                maxValue: 100,
                label: labelingText ?? 'Labeling',
              )
            : const SizedBox.shrink(),
        isStatus == true
            ? SizedBox(
                height: AppSizes.padding,
              )
            : const SizedBox.shrink(),
        //
        //
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: AppButton(
                onTap: functionLeftButton ?? () {},
                text: textLeftButton ?? '',
                rounded: true,
                borderWidth: 2,
                borderColor: AppColors.primary,
                padding: EdgeInsets.symmetric(
                  vertical: AppSizes.padding / 2.5,
                ),
              ),
            ),
            SizedBox(
              width: AppSizes.padding / 2,
            ),
            Expanded(
              child: AppButton(
                onTap: functionRightButton ?? () {},
                padding: EdgeInsets.symmetric(
                  vertical: AppSizes.padding / 2.5,
                ),
                text: textRightButton ?? '',
                textColor: AppColors.primary,
                buttonColor: AppColors.white,
                borderWidth: 2,
                borderColor: AppColors.primary,
                rounded: true,
              ),
            ),
          ],
        )
      ],
    );
  }

  Widget headItem() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: AppTextStyle.bold(size: 20),
        ),
        isList == true ? heartButton() : const SizedBox.shrink(),
      ],
    );
  }

  Widget subItem() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            customIcon4Circle(),
            SizedBox(
              width: AppSizes.padding / 2,
            ),
            Text(
              typeItem ?? 'Pakaian',
              style: AppTextStyle.regular(
                size: 14,
              ),
            )
          ],
        ),
        SizedBox(
          height: AppSizes.padding / 4,
        ),
        Row(
          children: [
            Icon(
              Icons.access_time_sharp,
              size: 16,
            ),
            SizedBox(
              width: AppSizes.padding / 2,
            ),
            Text(
              timeWork ?? '3 Hari Kerja',
              style: AppTextStyle.regular(
                size: 14,
              ),
            )
          ],
        ),
      ],
    );
  }

  Widget customIcon4Circle() {
    return Column(
      children: [
        Row(
          children: [
            Icon(
              Icons.circle_outlined,
              size: 6,
            ),
            SizedBox(
              width: 2,
            ),
            Icon(
              Icons.circle_outlined,
              size: 6,
            ),
          ],
        ),
        Row(
          children: [
            Icon(
              Icons.circle_outlined,
              size: 6,
            ),
            SizedBox(
              width: 2,
            ),
            Icon(
              Icons.circle_outlined,
              size: 6,
            ),
          ],
        )
      ],
    );
  }

  Widget imageCard(double width, double height) {
    return AppCard(
      onTap: () {},
      backgroundImage: randomImage,
      height: width,
      width: height,
      borderRadius: 20,
      padding: EdgeInsets.symmetric(
        vertical: AppSizes.padding / 2,
        horizontal: AppSizes.padding / 2,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: AppTags(
              text: starImageCount ?? '',
              color: AppColors.blackLv9.withOpacity(0.54),
              borderRadius: 100,
              textColor: AppColors.primary,
              leftIcon: Icons.star,
              iconsColor: AppColors.orangeLv1,
              fontSize: 10,
              padding: EdgeInsets.all(AppSizes.padding / 4),
            ),
          ),
        ],
      ),
    );
  }

  Widget priceStatus() {
    return Flex(
      direction: Axis.vertical,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          textPrice ?? '',
          style: AppTextStyle.bold(
            size: 24,
            color: AppColors.primary,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: Text(
            statusPrice ?? '',
            style: AppTextStyle.medium(
              size: 10,
              color: AppColors.blackLv4,
            ),
          ),
        ),
      ],
    );
  }

  Widget heartButton() {
    return AppIconButton(
      padding: EdgeInsets.all(0),
      buttonColor: AppColors.transparent,
      icon: const Icon(
        CustomIcon.heart_icon,
        color: AppColors.primary,
      ),
      onTap: () {},
    );
  }
}
