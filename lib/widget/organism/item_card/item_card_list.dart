import 'package:flutter/material.dart';

import '../../../app/asset/app_assets.dart';
import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_shadows.dart';
import '../../../app/theme/app_sizes.dart';
import '../../../app/theme/app_text_style.dart';
import '../../atom/app_divider.dart';
import '../../atom/app_image.dart';
import '../../molecule/app_button.dart';
import '../../molecule/app_card.dart';
import '../../molecule/app_icon_button.dart';
import '../../molecule/app_ink_container.dart';
import '../../molecule/app_tags.dart';

class ItemCardList extends StatefulWidget {
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final bool isList;
  final bool isVertical;
  final bool showTitleTopWidgets;
  final bool showBottomButtons;
  final bool showTitleTopTag;
  final bool showHeartButton;
  final bool showImage;
  final bool showTag;
  final String title;
  final String? subtitle;
  final String? textPrice;
  final String? statusPrice;
  final String? statustProgressText;
  final String? dataProgress;
  final String? textLeftButton;
  final String? textRightButton;
  final String? labelingText;
  final String? starImageCount;
  final String? tagText;
  final double? labelingCount;
  final String? titleTop;
  final String? image;
  final Color? tagColor;
  final Color? backgroundColor;
  final Color? leftButtonColor;
  final Color? leftTextButtonColor;
  final Color? rightButtonColor;
  final Color? rightTextButtonColor;
  final Color? iconHeartColor;
  final BorderRadius? borderRadius;
  final Widget? additionalWidget;
  final IconData? iconHeartButton;
  final IconData? leftIconButton;
  final IconData? rightIconButton;
  final List<BoxShadow>? boxShadow;
  final Widget? customBottomButton;
  final double? fontSizeButton;
  final void Function()? onTapRightButton;
  final void Function()? onTapLeftButton;
  final void Function()? onTapHearButton;
  final void Function()? onTapCard;

  const ItemCardList({
    super.key,
    required this.title,
    this.isVertical = false,
    this.showTitleTopWidgets = false,
    this.showBottomButtons = false,
    this.showTitleTopTag = false,
    this.showHeartButton = true,
    this.showImage = true,
    this.showTag = true,
    this.margin,
    this.padding,
    this.dataProgress,
    this.subtitle,
    this.isList = true,
    this.statusPrice,
    this.onTapLeftButton,
    this.onTapRightButton,
    this.labelingText,
    this.labelingCount,
    this.statustProgressText,
    this.textLeftButton,
    this.textPrice,
    this.textRightButton,
    this.starImageCount,
    this.titleTop,
    this.tagColor,
    this.tagText,
    this.additionalWidget,
    this.onTapCard,
    this.boxShadow,
    this.image,
    this.backgroundColor,
    this.borderRadius,
    this.iconHeartButton,
    this.onTapHearButton,
    this.iconHeartColor,
    this.leftButtonColor,
    this.leftIconButton,
    this.rightButtonColor,
    this.rightIconButton,
    this.leftTextButtonColor,
    this.rightTextButtonColor,
    this.customBottomButton,
    this.fontSizeButton,
  });

  @override
  State<ItemCardList> createState() => _ItemCardListState();
}

class _ItemCardListState extends State<ItemCardList> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.margin ?? EdgeInsets.zero,
      child: AppInkContainer(
        onTap: widget.onTapCard ?? () {},
        padding: widget.padding ?? EdgeInsets.all(AppSizes.padding),
        backgroundColor: widget.backgroundColor ?? AppColors.white,
        boxShadow: widget.boxShadow ?? [AppShadows.cardShadow1],
        borderRadius: widget.borderRadius ?? BorderRadius.circular(30),
        child: widget.isVertical ? verticalMode() : horizontalMode(),
      ),
    );
  }

  Widget verticalMode() {
    return Flex(
      direction: Axis.vertical,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        imageCard(150, 150),
        SizedBox(height: AppSizes.padding),
        Flex(
          direction: widget.isVertical ? Axis.vertical : Axis.horizontal,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.title,
              style: AppTextStyle.bold(size: 20),
              softWrap: true,
              maxLines: 2,
              overflow: TextOverflow.clip,
            ),
            SizedBox(height: AppSizes.padding / 2),
            Text(
              widget.subtitle ?? '',
              style: AppTextStyle.regular(size: 12),
              softWrap: true,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(height: AppSizes.padding / 2),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                priceStatus(),
                SizedBox(width: AppSizes.padding),
                heartButton(),
              ],
            ),
          ],
        )
      ],
    );
  }

  Widget horizontalMode() {
    return Column(
      children: [
        Flex(
          direction: Axis.horizontal,
          children: [
            widget.showImage ? imageCard(100, 100) : const SizedBox.shrink(),
            SizedBox(width: AppSizes.padding),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  headItem(),
                  Flex(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    direction: Axis.horizontal,
                    children: [
                      Expanded(
                        child: Text(
                          widget.subtitle ?? '',
                          style: AppTextStyle.medium(size: 14),
                          softWrap: true,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      priceStatus(),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
        widget.showBottomButtons
            ? widget.customBottomButton != null
                ? widget.customBottomButton ?? buttonDown()
                : buttonDown()
            : const SizedBox.shrink(),
      ],
    );
  }

  Widget headItem() {
    return Column(
      children: [
        widget.showTitleTopWidgets
            ? Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.titleTop ?? '',
                    style: AppTextStyle.regular(size: 10),
                  ),
                  !widget.showTitleTopTag
                      ? const SizedBox.shrink()
                      : AppTags(
                          text: widget.tagText ?? '',
                          color: widget.tagColor ?? AppColors.orangeLv1,
                          fontSize: 10,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 6),
                          borderRadius: 8,
                        ),
                ],
              )
            : const SizedBox.shrink(),
        widget.showTitleTopWidgets
            ? SizedBox(height: AppSizes.padding / 2)
            : const SizedBox.shrink(),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.title,
              style: AppTextStyle.bold(size: 20),
            ),
            widget.showTitleTopTag || !widget.isList
                ? const SizedBox.shrink()
                : !widget.showHeartButton
                    ? const SizedBox.shrink()
                    : heartButton(),
          ],
        ),
      ],
    );
  }

  Widget imageCard(double width, double height) {
    return AppCard(
      onTap: () {},
      backgroundImage: widget.image ?? randomImage,
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
          !widget.showTag
              ? const Center()
              : Align(
                  alignment: Alignment.centerRight,
                  child: AppTags(
                    text: widget.starImageCount ?? '',
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
      direction: widget.isVertical ? Axis.horizontal : Axis.vertical,
      mainAxisAlignment: widget.isVertical
          ? MainAxisAlignment.start
          : MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          widget.textPrice ?? '',
          style: AppTextStyle.bold(
            size: 24,
            color: AppColors.primary,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: Text(
            widget.statusPrice ?? '',
            style: AppTextStyle.medium(
              size: 10,
              color: AppColors.blackLv4,
            ),
          ),
        ),
      ],
    );
  }

  IconData heartIcon = CustomIcon.heartIcon;

  Widget heartButton() {
    return AppIconButton(
      padding: EdgeInsets.zero,
      buttonColor: AppColors.transparent,
      icon: Icon(
        widget.iconHeartButton ?? heartIcon,
        color: widget.iconHeartColor ?? AppColors.primary,
      ),
      onTap: widget.onTapHearButton ??
          () {
            setState(() {
              heartIcon == CustomIcon.heartIcon
                  ? heartIcon = CustomIcon.heartBoldIcon
                  : heartIcon = CustomIcon.heartIcon;
            });
          },
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
        widget.additionalWidget ?? const SizedBox.shrink(),
        //
        widget.additionalWidget == null
            ? const SizedBox.shrink()
            : SizedBox(height: AppSizes.padding),
        //
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: AppButton(
                onTap: widget.onTapLeftButton ?? () {},
                text: widget.textLeftButton ?? '',
                rounded: true,
                textColor: widget.leftTextButtonColor ?? AppColors.white,
                borderWidth: 2,
                fontSize: widget.fontSizeButton ?? 16,
                leftIcon: widget.leftIconButton,
                buttonColor: widget.leftButtonColor ?? AppColors.primary,
                borderColor: AppColors.primary,
                padding: EdgeInsets.symmetric(
                  vertical: AppSizes.padding / 2.5,
                ),
              ),
            ),
            SizedBox(width: AppSizes.padding / 2),
            Expanded(
              child: AppButton(
                onTap: widget.onTapRightButton ?? () {},
                padding: EdgeInsets.symmetric(vertical: AppSizes.padding / 2.5),
                text: widget.textRightButton ?? '',
                fontSize: widget.fontSizeButton ?? 16,
                textColor: widget.rightTextButtonColor ?? AppColors.primary,
                leftIcon: widget.rightIconButton,
                buttonColor: widget.rightButtonColor ?? AppColors.white,
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
}
