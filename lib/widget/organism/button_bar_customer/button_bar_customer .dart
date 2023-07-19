import 'package:flutter/material.dart';

import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_sizes.dart';
import '../../../app/theme/app_text_style.dart';
import '../../atom/app_divider.dart';
import '../../molecule/app_card_container.dart';
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
  });

  @override
  Widget build(BuildContext context) {
    List<Widget> listButton = [
      AppIconButton(
        padding: EdgeInsets.only(top: AppSizes.padding / 2),
        paddingText: const EdgeInsets.only(top: 2),
        icon: Icon(
          size: 20,
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

      AppIconButton(
        padding: EdgeInsets.only(top: AppSizes.padding / 2),
        paddingText: const EdgeInsets.only(top: 2),
        icon: Icon(
          size: 20,
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

      // =======================
      Container(
        margin: EdgeInsets.all(AppSizes.padding / 2),
        decoration: BoxDecoration(
          color: iconCenterBackgroundColor ?? AppColors.primary,
          shape: BoxShape.circle,
        ),
        child: AppIconButton(
          padding: EdgeInsets.only(top: AppSizes.padding / 2),
          paddingText: const EdgeInsets.only(top: 2),
          icon: Icon(
            size: 20,
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

      // ==========================
      AppIconButton(
        padding: EdgeInsets.only(top: AppSizes.padding / 2),
        paddingText: const EdgeInsets.only(top: 2),
        icon: Icon(
          iconRightIn,
          color: index == 3 ? AppColors.primary : AppColors.blackLv6,
          size: 20,
        ),
        text: textRightIn,
        onTap: functionButtonRightIn,
        buttonColor: AppColors.transparent,
        textStyle: AppTextStyle.medium(
          size: 10,
          color: index == 3 ? AppColors.primary : AppColors.blackLv6,
        ),
      ),

      AppIconButton(
        padding: EdgeInsets.only(top: AppSizes.padding / 2),
        paddingText: const EdgeInsets.only(top: 2),
        icon: Icon(
          iconRightOut,
          color: index == 4 ? AppColors.primary : AppColors.blackLv6,
          size: 20,
        ),
        text: textRightOut,
        onTap: functionButtonRightOut,
        buttonColor: AppColors.transparent,
        textStyle: AppTextStyle.medium(
          size: 10,
          color: index == 4 ? AppColors.primary : AppColors.blackLv6,
        ),
      )
    ];

    return AppCardContainer(
      backgroundColor: AppColors.white,
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
        bottomLeft: Radius.circular(0),
        bottomRight: Radius.circular(0),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: AppSizes.padding,
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                  height: 60,
                  width: MediaQuery.of(context).size.width - AppSizes.padding * 4,
                  child: GridView.builder(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 5,
                    ),
                    itemBuilder: (_, index) => Container(
                      padding: index != 2 ? EdgeInsets.only(top: AppSizes.padding / 3) : EdgeInsets.all(0),
                      child: listButton[index],
                    ),
                    itemCount: 5,
                  )),
            ],
          ),
          SizedBox(height: AppSizes.padding / 1.2),
          AppDivider(
            padding: EdgeInsets.symmetric(
              horizontal: AppSizes.padding * 6,
            ),
            thickness: 4,
            color: AppColors.blackLv7,
          ),
          SizedBox(height: AppSizes.padding / 4),
        ],
      ),
    );
  }
}
