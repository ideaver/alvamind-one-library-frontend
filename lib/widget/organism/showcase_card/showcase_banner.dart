import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

import '../../../app/asset/app_assets.dart';
import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_sizes.dart';
import '../../../app/theme/app_text_style.dart';
import '../../atom/app_image.dart';
import '../../molecule/app_card_container.dart';

class BannerCard extends StatefulWidget {
  final double viewportFraction;
  final List<Widget>? contentList;

  const BannerCard({
    super.key,
    this.viewportFraction = 1.0,
    this.contentList,
  });

  @override
  State<BannerCard> createState() => _BannerCardState();
}

class _BannerCardState extends State<BannerCard> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  final List<Widget> dummyContentList = [
    const BannerCardContent(),
    const BannerCardContent(),
    const BannerCardContent(),
    const BannerCardContent(),
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AppCardContainer(
          padding: const EdgeInsets.all(0),
          backgroundColor: AppColors.transparent,
          child: content(),
        ),
      ],
    );
  }

  Widget content() {
    return Stack(children: [
      CarouselSlider(
        options: CarouselOptions(
          autoPlay: true,
          initialPage: 0,
          enlargeCenterPage: false,
          viewportFraction: widget.viewportFraction,
          autoPlayCurve: Curves.fastOutSlowIn,
          autoPlayAnimationDuration: const Duration(milliseconds: 500),
          enableInfiniteScroll: true,
          onPageChanged: (index, reason) {
            setState(() {
              _current = index;
            });
          },
        ),
        carouselController: _controller,
        items: widget.contentList ?? dummyContentList,
      ),
      Positioned(
        right: 0,
        left: 0,
        bottom: 15,
        child: DotsIndicator(
          dotsCount: widget.contentList?.length ?? dummyContentList.length,
          position: _current,
          decorator: DotsDecorator(
            size: const Size.square(7.0),
            activeSize: const Size(30.0, 7.0),
            activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
            spacing: const EdgeInsets.all(4),
          ),
        ),
      ),
    ]);
  }
}

class BannerCardContent extends StatefulWidget {
  final EdgeInsets? margin;

  const BannerCardContent({
    super.key,
    this.margin,
  });

  @override
  State<BannerCardContent> createState() => _BannerCardContentState();
}

class _BannerCardContentState extends State<BannerCardContent> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AppCardContainer(
          margin: widget.margin ?? EdgeInsets.symmetric(horizontal: AppSizes.padding),
          padding: const EdgeInsets.all(0),
          borderRadius: BorderRadius.circular(40),
          backgroundColor: AppColors.blueLv1,
          gradient: const LinearGradient(colors: [
            Color(0xFF9D59FF),
            AppColors.purpleLv2,
          ]),
          child: Stack(
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: AppSizes.padding * 2,
                      vertical: AppSizes.padding * 1.5,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '30%',
                          style: AppTextStyle.bold(
                            size: 48,
                            color: AppColors.white,
                          ),
                        ),
                        SizedBox(height: AppSizes.padding / 2),
                        Text(
                          'Today’s Special!',
                          style: AppTextStyle.bold(
                            size: 20,
                            color: AppColors.white,
                          ),
                        ),
                        SizedBox(height: AppSizes.padding / 2),
                        Text(
                          'Get discount for every\norder,only valid for today',
                          style: AppTextStyle.bold(
                            size: 12,
                            color: AppColors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Positioned(
                left: 175 - AppSizes.padding,
                bottom: 0,
                child: const AppImage(
                  width: 200,
                  height: 200,
                  image: AppAssets.personBannerImage,
                  imgProvider: ImgProvider.assetImage,
                ),
              ),
            ],
          ),
        ),
        // mini cube
        Positioned(
          bottom: 125,
          left: 170,
          child: Opacity(
            opacity: 0.3,
            child: Image.asset(AppAssets.cubeImage, width: 100, height: 100, package: 'alvamind_library'),
          ),
        ),
        Positioned(
          top: 247,
          left: 223,
          child: Opacity(
            opacity: 0.3,
            child: Image.asset(AppAssets.cubeImage, width: 100, height: 100, package: 'alvamind_library'),
          ),
        ),
        // big cube
        Positioned(
          top: 18,
          right: 212,
          child: Opacity(
            opacity: 0.5,
            child: Image.asset(AppAssets.cubeImage, width: 250, height: 282, package: 'alvamind_library'),
          ),
        ),
        Positioned(
          left: 252,
          bottom: 56,
          child: Opacity(
            opacity: 0.5,
            child: Image.asset(AppAssets.cubeImage, width: 250, height: 282, package: 'alvamind_library'),
          ),
        ),
      ],
    );
  }
}
