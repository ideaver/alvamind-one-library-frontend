import 'package:flutter/material.dart';

import '../../../app/theme/app_sizes.dart';
import '../../../app/theme/app_text_style.dart';

class QuestionText extends StatelessWidget {
  final String text;
  final Color? color;
  final EdgeInsetsGeometry? padding;
  final Color? backgroundColor;
  final List<BoxShadow>? boxShadow;
  final BorderRadiusGeometry? borderRadius;

  QuestionText({
    super.key,
    required this.text,
    this.color,
    this.padding,
    this.backgroundColor,
    this.borderRadius,
    this.boxShadow,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding == null ? const EdgeInsets.fromLTRB(22, 16, 22, 22) : padding!,
      child: Container(
        padding: EdgeInsets.all(AppSizes.padding),
        decoration: BoxDecoration(
          boxShadow: boxShadow ?? [],
          color: backgroundColor ?? Colors.white,
          borderRadius: borderRadius ?? BorderRadius.circular(20),
        ),
        child: Text(
          text,
          overflow: TextOverflow.clip,
          textAlign: TextAlign.start,
          style: AppTextStyle.regular(
            size: 14,
            color: color,
          ),
        ),
      ),
    );
  }
}
