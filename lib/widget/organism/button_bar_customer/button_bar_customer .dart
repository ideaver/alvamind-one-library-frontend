import 'package:flutter/material.dart';

import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_sizes.dart';
import '../../atom/app_divider.dart';
import '../../molecule/app_bar_bottom.dart';

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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              AppBarBottom(
                icon: iconLeftOut,
                text: textLeftIn,
                functionButton: functionButtonLeftIn,
              ),
              AppBarBottom(
                icon: iconLeftIn,
                text: textLeftIn,
                functionButton: functionButtonLeftIn,
              ),
              AppBarBottom(
                icon: iconCenter,
                text: textCenter,
                functionButton: functionButtonCenter,
                buttonColor: iconCenterBackgroundColor,
                iconColor: iconCenterColor,
                textColor: textCenterColor,
              ),
              AppBarBottom(
                icon: iconRightIn,
                text: textRightIn,
                functionButton: functionButtonRightIn,
              ),
              AppBarBottom(
                icon: iconRightOut,
                text: textRightOut,
                functionButton: functionButtonRightOut,
              ),
            ],
          ),
          SizedBox(
            height: AppSizes.padding,
          ),
          AppDivider(
            thickness: 4,
            padding: EdgeInsets.symmetric(horizontal: AppSizes.padding * 6),
          ),
          SizedBox(
            height: AppSizes.padding / 2,
          ),
        ],
      ),
    );
  }
}
