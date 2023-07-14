import 'package:flutter/material.dart';

import '../../app/asset/app_assets.dart';
import '../../app/theme/app_colors.dart';
import '../../app/theme/app_text_style.dart';
import '../atom/app_divider.dart';

class AppExpansionListTile extends StatefulWidget {
  final String title;
  final Color? titleColor;
  final String? subtitle;
  final String? subtitleDown;
  final Color? subtitleColor;
  final Color? subtitleDownColor;
  final IconData? icon;
  final Color? buttonDropColor;
  final Color? iconColor;
  final Color? backgroundColor;
  final bool expand;
  final List<Widget> children;
  final Widget? moreItem;
  final Widget? leftItem;
  final bool? divider;

  const AppExpansionListTile({
    Key? key,
    required this.children,
    required this.title,
    this.icon,
    this.backgroundColor,
    this.titleColor,
    this.subtitle,
    this.subtitleColor,
    this.buttonDropColor,
    this.iconColor,
    this.moreItem,
    this.expand = false,
    this.leftItem,
    this.divider = true,
    this.subtitleDown,
    this.subtitleDownColor,
  }) : super(key: key);

  @override
  State<AppExpansionListTile> createState() => _AppExpansionListTileState();
}

class _AppExpansionListTileState extends State<AppExpansionListTile> {
  bool isExpanded = true;

  @override
  void initState() {
    isExpanded = widget.expand;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      height: isExpanded ? null : 58,
      duration: const Duration(milliseconds: 300),
      child: Container(
        decoration: BoxDecoration(
          color: widget.backgroundColor,
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
              color: AppColors.blackLv8,
              offset: Offset(0, 4),
              blurRadius: 60,
              spreadRadius: 0,
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    isExpanded = !isExpanded;
                    setState(() {});
                  },
                  child: Container(
                    padding: const EdgeInsets.all(18),
                    decoration: BoxDecoration(
                      color: widget.backgroundColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            widget.icon != null
                                ? Padding(
                                    padding: const EdgeInsets.only(
                                      right: 9,
                                    ),
                                    child: Icon(
                                      widget.icon!,
                                      color: widget.iconColor == null ? AppColors.black : widget.iconColor,
                                      size: 20,
                                    ),
                                  )
                                : const SizedBox.shrink(),
                            widget.leftItem != null ? widget.leftItem! : const SizedBox.shrink(),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                widget.subtitle != null
                                    ? Text(
                                        widget.subtitle!,
                                        style: AppTextStyle.bodyMedium(
                                          fontWeight: AppFontWeight.medium,
                                          color: widget.subtitleColor,
                                        ),
                                      )
                                    : const SizedBox.shrink(),
                                Text(
                                  widget.title,
                                  style: AppTextStyle.bold(
                                    size: 18,
                                    color: widget.titleColor,
                                  ),
                                ),
                                widget.subtitleDown != null
                                    ? Text(
                                        widget.subtitleDown!,
                                        style: AppTextStyle.bodyMedium(
                                          fontWeight: AppFontWeight.medium,
                                          color: widget.subtitleDownColor,
                                        ),
                                      )
                                    : const SizedBox.shrink(),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            widget.moreItem != null ? widget.moreItem! : const SizedBox.shrink(),
                            const SizedBox(
                              width: 12,
                            ),
                            Icon(
                              isExpanded ? CustomIcon.icon_arrow_down : CustomIcon.icon_arrow_right,
                              color: widget.buttonDropColor == null ? Colors.blue : widget.buttonDropColor,
                              size: 18,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                widget.divider == true
                    ? isExpanded
                        ? const AppDivider(
                            thickness: 0.5,
                            padding: EdgeInsets.symmetric(horizontal: 18),
                          )
                        : const SizedBox.shrink()
                    : const SizedBox.shrink(),
                ...widget.children,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
