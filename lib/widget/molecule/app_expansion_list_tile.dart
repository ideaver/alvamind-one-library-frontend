import 'package:alvamind_library/app/theme/app_shadows.dart';
import 'package:flutter/material.dart';

import '../../app/asset/app_assets.dart';
import '../../app/theme/app_colors.dart';
import '../../app/theme/app_sizes.dart';
import '../../app/theme/app_text_style.dart';
import '../atom/app_divider.dart';

class AppExpansionListTile extends StatefulWidget {
  final String? title;
  final String? subtitle;
  final String? subtitleDown;
  final IconData? icon;
  final Color? titleColor;
  final Color? subtitleColor;
  final Color? subtitleDownColor;
  final Color? buttonDropColor;
  final Color? iconColor;
  final Color? backgroundColor;
  final Color? childrenColor;
  final List<Widget> children;
  final EdgeInsetsGeometry? paddingHeader;
  final EdgeInsetsGeometry? paddingChild;
  final Widget? moreItem;
  final Widget? leftItem;
  final bool? divider;
  final bool expand;
  final bool? isDisabled;
  final bool? showExpandButton;
  final bool? gap;
  final List<BoxShadow>? boxShadow;
  final CrossAxisAlignment? crossAxisAlignmentChild;

  const AppExpansionListTile({
    Key? key,
    this.children = const [],
    this.title,
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
    this.boxShadow,
    this.paddingHeader,
    this.paddingChild,
    this.isDisabled = false,
    this.showExpandButton = true,
    this.crossAxisAlignmentChild,
    this.gap = false,
    this.childrenColor,
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
      height: isExpanded
          ? null
          : widget.subtitle != null
              ? 74
              : widget.gap == true
                  ? 74
                  : 64,
      duration: const Duration(milliseconds: 300),
      child: Ink(
        decoration: BoxDecoration(
          color: widget.backgroundColor,
          borderRadius: BorderRadius.circular(AppSizes.padding),
          boxShadow: widget.boxShadow ?? [AppShadows.cardShadow1],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(AppSizes.padding),
          child: SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),
            child: Column(
              crossAxisAlignment: widget.crossAxisAlignmentChild ?? CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: widget.isDisabled == true
                      ? () {
                          isExpanded = true;
                        }
                      : () {
                          isExpanded = !isExpanded;
                          setState(() {});
                        },
                  child: Container(
                    padding: widget.paddingHeader ?? const EdgeInsets.all(18),
                    decoration: BoxDecoration(
                      color: widget.childrenColor == null ? widget.childrenColor : widget.backgroundColor,
                      borderRadius: BorderRadius.circular(AppSizes.padding),
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
                                      color: widget.iconColor ?? AppColors.black,
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
                                widget.title == null
                                    ? const SizedBox.shrink()
                                    : Text(
                                        widget.title ?? '',
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
                            widget.showExpandButton == false
                                ? const SizedBox.shrink()
                                : const SizedBox(
                                    width: 12,
                                  ),
                            widget.showExpandButton == false
                                ? const SizedBox.shrink()
                                : Icon(
                                    isExpanded ? CustomIcon.iconArrowDown : CustomIcon.iconArrowRight,
                                    color: widget.buttonDropColor ?? Colors.blue,
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
                isExpanded == true
                    ? Padding(
                        padding: widget.paddingChild ?? EdgeInsets.zero,
                        child: Column(
                          crossAxisAlignment: widget.crossAxisAlignmentChild ?? CrossAxisAlignment.center,
                          children: [
                            ...widget.children,
                          ],
                        ),
                      )
                    : const SizedBox.shrink(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
