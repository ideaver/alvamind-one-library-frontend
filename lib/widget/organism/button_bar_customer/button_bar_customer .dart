import 'package:flutter/material.dart';

import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_sizes.dart';
import '../../../app/theme/app_text_style.dart';
import '../../atom/app_divider.dart';
import '../../molecule/app_icon_button.dart';

class ButtonBarCustomer extends StatelessWidget {
  final String textCenter;
  final String textLeftOut;
  final String textLeftIn;
  final String textRightIn;
  final String textRightOut;

  final IconData iconCenter;
  final IconData iconLeftOut;
  final IconData iconLeftIn;
  final IconData iconRightIn;
  final IconData iconRightOut;
  final Color? iconCenterColor;
  final Color? iconCenterBackgroundColor;
  final Color? textCenterColor;
  final EdgeInsetsGeometry? paddingTextCenter;
  final EdgeInsetsGeometry? padding;
  final Widget? gapLeftOut;
  final Widget? gapLeftIn;
  final Widget? gapRightIn;
  final Widget? gapRightOut;

  final void Function() functionButtonCenter;
  final void Function() functionButtonLeftOut;
  final void Function() functionButtonLeftIn;
  final void Function() functionButtonRightIn;
  final void Function() functionButtonRightOut;

  final int? index;

  const ButtonBarCustomer({
    super.key,
    required this.textCenter,
    required this.textLeftOut,
    required this.textLeftIn,
    required this.textRightIn,
    required this.textRightOut,
    required this.iconCenter,
    required this.iconLeftOut,
    required this.iconLeftIn,
    required this.iconRightIn,
    required this.iconRightOut,
    required this.functionButtonCenter,
    required this.functionButtonLeftOut,
    required this.functionButtonLeftIn,
    required this.functionButtonRightIn,
    required this.functionButtonRightOut,
    this.iconCenterColor,
    this.iconCenterBackgroundColor,
    this.textCenterColor,
    this.index,
    this.paddingTextCenter,
    this.padding,
    this.gapLeftIn,
    this.gapLeftOut,
    this.gapRightIn,
    this.gapRightOut,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
          bottomLeft: Radius.circular(0),
          bottomRight: Radius.circular(0),
        ),
      ),
      padding: EdgeInsets.symmetric(horizontal: AppSizes.padding),
      child: Column(
        children: [
          Padding(
            padding: padding ?? const EdgeInsets.all(0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AppIconButton(
                  padding: const EdgeInsets.all(0),
                  paddingText: const EdgeInsets.only(top: 5),
                  icon: Icon(
                    iconLeftOut,
                    color: index == 0 ? AppColors.primary : AppColors.blackLv6,
                  ),
                  text: textLeftOut,
                  buttonColor: AppColors.transparent,
                  onTap: functionButtonLeftOut,
                  textStyle: AppTextStyle.medium(
                    size: 10,
                    color: index == 0 ? AppColors.primary : AppColors.blackLv6,
                  ),
                ),
                gapLeftOut ?? const SizedBox.shrink(),
                AppIconButton(
                  padding: const EdgeInsets.all(0),
                  paddingText: const EdgeInsets.only(top: 5),
                  icon: Icon(
                    iconLeftIn,
                    color: index == 1 ? AppColors.primary : AppColors.blackLv6,
                  ),
                  text: textLeftIn,
                  onTap: functionButtonLeftIn,
                  buttonColor: AppColors.transparent,
                  textStyle: AppTextStyle.medium(
                    size: 10,
                    color: index == 1 ? AppColors.primary : AppColors.blackLv6,
                  ),
                ),
                gapLeftIn ?? const SizedBox.shrink(),
                // =======================
                Container(
                  padding: paddingTextCenter ?? EdgeInsets.all(AppSizes.padding),
                  decoration: BoxDecoration(
                    color: iconCenterBackgroundColor ?? AppColors.primary,
                    shape: BoxShape.circle,
                  ),
                  child: AppIconButton(
                    padding: const EdgeInsets.all(0),
                    paddingText: const EdgeInsets.only(top: 5),
                    icon: Icon(
                      iconCenter,
                      color: textCenterColor != null
                          ? textCenterColor
                          : index == 2
                              ? AppColors.primary
                              : AppColors.blackLv6,
                    ),
                    text: textCenter,
                    onTap: functionButtonCenter,
                    buttonColor: Colors.transparent,
                    textStyle: AppTextStyle.medium(
                      size: 10,
                      color: textCenterColor != null
                          ? textCenterColor
                          : index == 2
                              ? AppColors.primary
                              : AppColors.blackLv6,
                    ),
                  ),
                ),
                gapRightIn ?? SizedBox.shrink(),

                // ==========================
                AppIconButton(
                  padding: const EdgeInsets.all(0),
                  paddingText: const EdgeInsets.only(top: 5),
                  icon: Icon(
                    iconRightIn,
                    color: index == 3 ? AppColors.primary : AppColors.blackLv6,
                  ),
                  text: textRightIn,
                  onTap: functionButtonRightIn,
                  buttonColor: AppColors.transparent,
                  textStyle: AppTextStyle.medium(
                    size: 10,
                    color: index == 3 ? AppColors.primary : AppColors.blackLv6,
                  ),
                ),
                gapRightOut ?? const SizedBox.shrink(),
                AppIconButton(
                  padding: const EdgeInsets.all(0),
                  paddingText: const EdgeInsets.only(top: 5),
                  icon: Icon(
                    iconRightOut,
                    color: index == 4 ? AppColors.primary : AppColors.blackLv6,
                  ),
                  text: textRightOut,
                  onTap: functionButtonRightOut,
                  buttonColor: AppColors.transparent,
                  textStyle: AppTextStyle.medium(
                    size: 10,
                    color: index == 4 ? AppColors.primary : AppColors.blackLv6,
                  ),
                )
              ],
            ),
          ),
          AppDivider(
            padding: EdgeInsets.symmetric(horizontal: AppSizes.padding * 6, vertical: AppSizes.padding / 2),
            thickness: 4,
            color: AppColors.blackLv7,
          )
        ],
      ),
    );
  }
}
