import 'package:alvamind_library/app/theme/app_colors.dart';
import 'package:alvamind_library/app/theme/app_sizes.dart';
import 'package:alvamind_library/widget/molecule/app_tabbar.dart';

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TabBarDetailOutlet extends StatefulWidget {
  final List listTabBar;
  final EdgeInsets? padding;
  final double? fontSize;
  final bool? isSelected;
  final List<IconData>? leftIcon;
  final List<IconData>? rightIcon;
  final void Function(int)? onTap;

  TabBarDetailOutlet({
    super.key,
    required this.listTabBar,
    required this.onTap,
    this.padding,
    this.fontSize,
    this.leftIcon,
    this.rightIcon,
    this.isSelected,
  });

  @override
  State<TabBarDetailOutlet> createState() => _TabBarDetailOutletState();
}

class _TabBarDetailOutletState extends State<TabBarDetailOutlet> {
  int tabBarSelected = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ...List.generate(widget.listTabBar.length, (index) {
            return Padding(
              padding: index == widget.listTabBar.length - 1 ? EdgeInsets.all(0) : EdgeInsets.only(right: AppSizes.padding),
              child: AppTabBar(
                leftIcon: widget.leftIcon![index],
                fontSize: widget.fontSize ?? 16,
                text: widget.listTabBar[index],
                onTap: () {
                  setState(() {
                    tabBarSelected = index;
                    widget.onTap!(tabBarSelected);
                  });
                },
                textColor: tabBarSelected == index ? AppColors.primary : AppColors.blackLv6,
                leftIconColor: tabBarSelected == index ? AppColors.primary : AppColors.blackLv6,
                dividerColor: tabBarSelected == index ? AppColors.primary : AppColors.blackLv6,
              ),
            );
          }),
        ],
      ),
    );
  }
}
