import 'package:alvamind_library/app/asset/app_assets.dart';
import 'package:alvamind_library/app/theme/app_colors.dart';
import 'package:alvamind_library/widget/atom/app_image.dart';
import 'package:flutter/material.dart';

class AppPinPoint extends StatelessWidget {
  final String image;
  final ImgProvider imgProvider;
  final double size;
  final Function()? onTap;

  const AppPinPoint({
    super.key,
    required this.image,
    this.imgProvider = ImgProvider.networkImage,
    this.size = 50,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      child: Stack(
        alignment: Alignment.center,
        children: [
          SizedBox(
            width: size,
            child: const AppImage(
              image: AppAssets.pinIcon,
              imgProvider: ImgProvider.assetImage,
            ),
          ),
          Container(
            width: size / 1.5,
            height: size / 1.5,
            margin: EdgeInsets.only(bottom: size / 5),
            decoration: BoxDecoration(
              color: AppColors.white,
              border: Border.all(
                width: size / 20,
                color: AppColors.white,
              ),
              shape: BoxShape.circle,
            ),
            child: ClipOval(
              child: AppImage(
                image: image,
                imgProvider: imgProvider,
              ),
            ),
          )
        ],
      ),
    );
  }
}
