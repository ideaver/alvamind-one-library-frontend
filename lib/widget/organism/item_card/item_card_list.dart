import 'package:flutter/material.dart';

import '../../../app/asset/app_assets.dart';
import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_sizes.dart';
import '../../../app/theme/app_text_style.dart';
import '../../atom/app_image.dart';
import '../../molecule/app_card.dart';
import '../../molecule/app_icon_button.dart';
import '../../molecule/app_tags.dart';

class ItemCardList extends StatelessWidget {
  final String title;
  final EdgeInsetsGeometry? padding;
  final bool? isList;
  final bool? isVertical;
  final bool? isProfile;
  final String? address;
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
  final String? tagText;
  final Color? tagColor;
  final String? dateProfileItem;
  final void Function()? functionRightButton;
  final void Function()? functionLeftButton;

  const ItemCardList({
    super.key,
    required this.title,
    this.isVertical = false,
    this.isProfile = false,
    this.padding,
    this.dataProgress,
    this.address,
    this.dateProgress,
    this.isList,
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
    this.dateProfileItem,
    this.tagColor,
    this.tagText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding ?? EdgeInsets.all(AppSizes.padding),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: isVertical == true ? verticalMode() : horizontalMode(),
    );
  }

  Widget verticalMode() {
    return Container(
      child: Flex(
        direction: Axis.vertical,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          imageCard(150, 150),
          SizedBox(
            height: AppSizes.padding,
          ),
          Flex(
            direction: isVertical == true ? Axis.vertical : Axis.horizontal,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: AppTextStyle.bold(size: 20),
              ),
              SizedBox(
                height: AppSizes.padding / 2,
              ),
              Text(
                address ?? 'City, Country',
                style: AppTextStyle.regular(size: 12),
              ),
              SizedBox(
                height: AppSizes.padding / 2,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    priceStatus(),
                    SizedBox(
                      width: AppSizes.padding,
                    ),
                    heartButton(),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget horizontalMode() {
    return Column(
      children: [
        Flex(
          direction: Axis.horizontal,
          children: [
            imageCard(100, 100),
            SizedBox(
              width: AppSizes.padding,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  headItem(),
                  Flex(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    direction: Axis.horizontal,
                    children: [
                      Text(
                        address ?? 'City, Country',
                        style: AppTextStyle.medium(size: 14),
                      ),
                      priceStatus(),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
        // buttonDown()
      ],
    );
  }

  Widget headItem() {
    return Column(
      children: [
        isProfile == true
            ? Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    dateProfileItem ?? 'Berdiri 2023',
                    style: AppTextStyle.regular(size: 10),
                  ),
                  AppTags(
                    text: tagText ?? 'Premium',
                    color: tagColor ?? AppColors.orangeLv1,
                    fontSize: 10,
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                    borderRadius: 8,
                  ),
                ],
              )
            : const SizedBox.shrink(),
        isProfile == true
            ? SizedBox(
                height: AppSizes.padding / 2,
              )
            : const SizedBox.shrink(),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: AppTextStyle.bold(size: 20),
            ),
            heartButton(),
          ],
        ),
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
      direction: isVertical == true ? Axis.horizontal : Axis.vertical,
      mainAxisAlignment: isVertical == true
          ? MainAxisAlignment.start
          : MainAxisAlignment.center,
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
