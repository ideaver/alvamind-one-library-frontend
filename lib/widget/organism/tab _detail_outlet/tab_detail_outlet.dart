import 'package:alvamind_library/app/theme/app_colors.dart';
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
  final TabController? controller;
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
    this.controller,
  });

  @override
  State<TabBarDetailOutlet> createState() => _TabBarDetailOutletState();
}

class _TabBarDetailOutletState extends State<TabBarDetailOutlet> {
  int tabBarSelected = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return DefaultTabController(
      length: widget.listTabBar.length,
      child: TabBar(
        controller: widget.controller,
        isScrollable: true,
        physics: const BouncingScrollPhysics(),
        indicatorColor: AppColors.primary,
        indicatorSize: TabBarIndicatorSize.label,
        indicator: const BoxDecoration(
            border: Border(
                bottom: BorderSide(
          color: AppColors.primary,
          width: 3,
        ))),
        indicatorPadding: EdgeInsets.all(2),
        onTap: (value) {
          setState(() {
            tabBarSelected = value;
            widget.onTap!(tabBarSelected);
          });
        },
        tabs: [
          ...List.generate(widget.listTabBar.length, (index) {
            return Tab(
              child: AppTabBar(
                leftIcon: widget.leftIcon?[index] ?? null,
                fontSize: widget.fontSize ?? 16,
                text: widget.listTabBar[index],
                textColor: tabBarSelected == index ? AppColors.primary : AppColors.blackLv6,
                leftIconColor: tabBarSelected == index ? AppColors.primary : AppColors.blackLv6,
                dividerColor: AppColors.blackLv7,
                divider: tabBarSelected == index ? false : true,
              ),
            );
          })
        ],
      ),
    );
  }
}
