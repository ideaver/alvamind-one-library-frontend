import 'package:alvamind_library/app/theme/app_colors.dart';
import 'package:flutter/material.dart';

class CategoryMenuModel {
  final Widget child;
  final String title;
  final Color color;
  final Function() onTap;
  final bool enable;
  final TextStyle? textStyle;

  CategoryMenuModel({
    required this.child,
    required this.title,
    required this.onTap,
    this.color = AppColors.blueLv5,
    this.enable = true,
    this.textStyle,
  });
}
