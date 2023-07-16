import 'package:alvamind_library/app/asset/app_assets.dart';
import 'package:alvamind_library/app/theme/app_text_style.dart';
import 'package:alvamind_library/widget/atom/app_image.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_sizes.dart';

import '../../molecule/app_card_container.dart';

class BannerCard extends StatefulWidget {
  const BannerCard({
    super.key,
  });

  @override
  State<BannerCard> createState() => _BannerCardState();
}

class _BannerCardState extends State<BannerCard> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  final List<Widget> contentList = [
    DummyContent(),
    DummyContent(),
    DummyContent(),
    DummyContent(),
  ];
  @override
  Widget build(BuildContext context) {
    return AppCardContainer(
        padding: EdgeInsets.all(0),
        borderRadius: BorderRadius.circular(40),
        backgroundColor: AppColors.blueLv1,
        gradient: const LinearGradient(colors: [
          Color(0xFF9D59FF),
          AppColors.purpleLv2,
        ]),
        child: Stack(
          children: [
            content(),
          ],
        ));
  }

  Widget content() {
    return Stack(children: [
      CarouselSlider(
        options: CarouselOptions(
          autoPlay: true,
          initialPage: 0,
          enlargeCenterPage: false,
          viewportFraction: 1.0,
          autoPlayCurve: Curves.fastOutSlowIn,
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          enableInfiniteScroll: true,
          onPageChanged: (index, reason) {
            setState(() {
              _current = index;
            });
          },
        ),
        carouselController: _controller,
        items: contentList,
      ),
      Positioned(
        right: 0,
        left: 0,
        bottom: 15,
        child: DotsIndicator(
          dotsCount: contentList.length,
          position: _current,
          decorator: DotsDecorator(
            size: const Size.square(7.0),
            activeSize: const Size(30.0, 7.0),
            activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
            color: AppColors.white.withOpacity(0.50),
            activeColor: AppColors.white,
            spacing: const EdgeInsets.all(4),
          ),
        ),
      ),
    ]);
  }
}

class DummyContent extends StatelessWidget {
  const DummyContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppCardContainer(
      padding: EdgeInsets.all(0),
      borderRadius: BorderRadius.circular(40),
      backgroundColor: AppColors.transparent,
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
            left: 165 - AppSizes.padding,
            top: 10,
            child: const AppImage(
              width: 220,
              image: AppAssets.personBannerImage,
              imgProvider: ImgProvider.assetImage,
            ),
          )
        ],
      ),
    );
  }
}