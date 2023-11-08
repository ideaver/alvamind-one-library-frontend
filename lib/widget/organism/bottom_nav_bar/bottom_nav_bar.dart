import 'package:alvamind_library/app/theme/app_shadows.dart';
import 'package:flutter/material.dart';

import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_sizes.dart';
import '../../../app/theme/app_text_style.dart';
import '../../../model/bottom_nav_bar_model.dart';
import '../../molecule/app_card_container.dart';

class BottomNavBar extends StatelessWidget {
  final List<Widget> pageList;
  final List<BottomNavBarModel> buttonList;
  final void Function(int) onTapButton;
  final int selectedIndex;

  const BottomNavBar({
    super.key,
    required this.pageList,
    required this.buttonList,
    required this.onTapButton,
    this.selectedIndex = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pageList[selectedIndex],
      bottomSheet: SizedBox(
        height: 80,
        child: AppCardContainer(
          boxShadow: [AppShadows.cardShadow4],
          backgroundColor: AppColors.white,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
            bottomLeft: Radius.circular(0),
            bottomRight: Radius.circular(0),
          ),
          padding: EdgeInsets.zero,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ...List.generate(buttonList.length, (i) {
                return Expanded(
                  child: InkWell(
                    onTap: () {
                      onTapButton(i);
                    },
                    child: Container(
                      padding: buttonList[i].isCenterButton ? EdgeInsets.all(AppSizes.padding / 1.5) : EdgeInsets.zero,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: buttonList[i].isCenterButton ? [AppShadows.shadow1] : null,
                        gradient: buttonList[i].isCenterButton
                            ? const LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  AppColors.blueLv2,
                                  AppColors.primary,
                                ],
                              )
                            : null,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            buttonList[i].icon,
                            color: buttonList[i].isCenterButton
                                ? AppColors.white
                                : selectedIndex == i
                                    ? AppColors.primary
                                    : AppColors.blackLv6,
                            size: 20,
                          ),
                          SizedBox(height: AppSizes.padding / 4),
                          Text(
                            buttonList[i].title,
                            textAlign: TextAlign.center,
                            maxLines: 1,
                            style: AppTextStyle.bodySmall(
                              fontWeight: selectedIndex == i ? AppFontWeight.bold : AppFontWeight.medium,
                              color: buttonList[i].isCenterButton
                                  ? AppColors.white
                                  : selectedIndex == i
                                      ? AppColors.primary
                                      : AppColors.blackLv6,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              })
            ],
          ),
        ),
      ),
    );
  }
}
