import 'package:flutter/material.dart';

import '../../app/theme/app_colors.dart';

class AppIconButton extends StatelessWidget {
  final double? width;
  final double? height;
  final double? iconSize;
  final EdgeInsets padding;
  final bool enable;
  final Color? buttonColor;
  final Color iconColor;
  final Color disabledButtonColor;
  final Color disabledIconColor;
  final double borderRadius;
  final IconData icon;
  final Function() onTap;

  const AppIconButton({
    super.key,
    this.width,
    this.height,
    this.iconSize,
    this.padding = const EdgeInsets.all(12),
    this.enable = true,
    this.buttonColor,
    this.disabledButtonColor = AppColors.blackLv2,
    this.iconColor = AppColors.primary,
    this.disabledIconColor = Colors.white,
    this.borderRadius = 100,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(4),
      color: Colors.transparent,
      child: InkWell(
        onTap: enable ? onTap : null,
        splashColor: Colors.black.withOpacity(0.06),
        splashFactory: InkRipple.splashFactory,
        highlightColor: enable ? Colors.black12 : Colors.transparent,
        borderRadius: BorderRadius.circular(borderRadius),
        child: Ink(
          width: width,
          height: height,
          padding: padding,
          decoration: BoxDecoration(
            color: enable ? buttonColor : disabledButtonColor,
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          child: Icon(
            icon,
            size: iconSize,
            color: iconColor,
          ),
        ),
      ),
    );
  }
}
