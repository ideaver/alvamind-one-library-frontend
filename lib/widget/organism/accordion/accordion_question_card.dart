import 'package:alvamind_library/app/theme/app_text_style.dart';
import 'package:flutter/material.dart';

class QuestionText extends StatelessWidget {
  final String text;
  final Color? color;
  final EdgeInsetsGeometry? padding;

  QuestionText({
    super.key,
    required this.text,
    this.color,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding == null
          ? EdgeInsets.only(
              top: 16,
              bottom: 22,
              right: 22,
              left: 22,
            )
          : padding!,
      child: Container(
        child: Text(
          text,
          style: AppTextStyle.regular(
            size: 14,
            color: color,
          ),
          overflow: TextOverflow.clip,
          textAlign: TextAlign.start,
        ),
      ),
    );
  }
}
