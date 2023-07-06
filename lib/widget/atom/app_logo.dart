import 'package:flutter/material.dart';
import 'package:laundry_net/app/asset/app_assets.dart';
import 'package:laundry_net/widget/atom/app_image.dart';

import '../../app/theme/app_text_style.dart';

class AppLogo extends StatelessWidget {
  final double size;
  final bool withText;
  final bool isRounded;
  final Function()? onTap;

  const AppLogo({
    super.key,
    this.size = 52,
    this.withText = false,
    this.isRounded = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: Row(
        children: [
          AppImage(
            image: isRounded ? AppAssets.logoCircle : AppAssets.logo,
            imgProvider: ImgProvider.assetImage,
          ),
          withText
              ? Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Text(
                    'Reasa',
                    style: AppTextStyle.heading1(),
                  ),
                )
              : const SizedBox.shrink(),
        ],
      ),
    );
  }
}
