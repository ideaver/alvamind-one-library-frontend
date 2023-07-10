import 'package:alvamind_library/app/theme/app_colors.dart';
import 'package:flutter/material.dart';

import '../../app/theme/app_sizes.dart';

class AppLongCard extends StatelessWidget {
  final List<Widget> children;
  final Color? backgroundColor;
  final BorderRadiusGeometry? borderRadius;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;

  const AppLongCard({
    super.key,
    required this.children,
    this.backgroundColor,
    this.padding,
    this.margin,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin ?? const EdgeInsets.all(0),
      padding: padding ?? EdgeInsets.all(AppSizes.padding),
      decoration: BoxDecoration(
        color: backgroundColor ?? AppColors.white,
        borderRadius: borderRadius ?? BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: children,
      ),
    );
  }
}
