import 'package:flutter/material.dart';
import 'package:laundry_net/widget/atom/app_image.dart';

import '../../app/theme/app_colors.dart';

class AppAvatar extends StatelessWidget {
  final String image;
  final ImgProvider imgProvider;
  final double size;
  final double? borderWidth;
  final double borderRadius;
  final double? iconSize;
  final bool showIconButton;
  final bool enabled;
  final IconData? icon;
  final Function()? onTapIcon;

  const AppAvatar({
    super.key,
    required this.image,
    this.imgProvider = ImgProvider.networkImage,
    this.size = 60,
    this.borderWidth,
    this.borderRadius = 100,
    this.iconSize,
    this.showIconButton = false,
    this.enabled = true,
    this.icon,
    this.onTapIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        border: borderWidth != null
            ? Border.all(
                width: size / 24,
                color: enabled ? AppColors.primary : AppColors.disabled,
              )
            : null,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: Stack(
        children: [
          SizedBox(
            width: size,
            height: size,
            child: ClipOval(
              child: AppImage(
                image: image,
                imgProvider: imgProvider,
              ),
            ),
          ),
          showIconButton
              ? Positioned(
                  right: 0,
                  bottom: 0,
                  child: Container(
                    padding: EdgeInsets.all(size / 20),
                    // margin: icon != null
                    //     ? null
                    //     : EdgeInsets.only(bottom: size / 20, right: size / 20),
                    decoration: BoxDecoration(
                      color: enabled ? AppColors.primary : AppColors.disabled,
                      shape:
                          icon == null ? BoxShape.circle : BoxShape.rectangle,
                      border: Border.all(
                        width: size / 18,
                        color: AppColors.white,
                      ),
                      borderRadius: icon == null
                          ? null
                          : BorderRadius.circular(size / 10),
                    ),
                    child: icon != null
                        ? Icon(
                            icon,
                            color: AppColors.white,
                            size: iconSize ?? (size / 8),
                          )
                        : SizedBox(
                            width: size / 8,
                            height: size / 8,
                          ),
                  ),
                )
              : const SizedBox.shrink(),
        ],
      ),
    );
  }
}
