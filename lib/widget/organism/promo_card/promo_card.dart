import 'package:flutter/material.dart';

import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_sizes.dart';
import '../../../app/theme/app_text_style.dart';
import '../../atom/app_divider.dart';
import '../../atom/app_image.dart';
import '../../molecule/app_button.dart';
import '../../molecule/app_icon_button.dart';
import '../../molecule/app_long_card.dart';

class PromoCard extends StatelessWidget {
  final String title;
  final String? subtitle;
  final String? datePromo;
  final String? detailDatePromo;
  final String? countPromo;
  final IconData? iconButton;

  final void Function()? functionIconButton;
  final void Function()? functionEditButton;
  final String? image;
  final bool? rightIcon;

  const PromoCard({
    super.key,
    this.datePromo,
    this.functionIconButton,
    this.iconButton,
    this.image,
    this.subtitle,
    this.rightIcon = true,
    this.countPromo,
    this.detailDatePromo,
    this.functionEditButton,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: AppColors.white, borderRadius: BorderRadius.circular(30)),
      child: Column(
        children: [
          AppLongCard(
            backgroundColor: AppColors.transparent,
            children: [
              Row(
                children: [
                  AppImage(
                    image: image ?? randomImage,
                    imgProvider: ImgProvider.assetImage,
                    width: 60,
                  ),
                  SizedBox(
                    width: AppSizes.padding,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        overflow: TextOverflow.clip,
                        style: AppTextStyle.bold(
                          size: 20,
                        ),
                      ),
                      SizedBox(height: AppSizes.padding / 2),
                      Row(
                        children: [
                          const Icon(
                            Icons.access_time_outlined,
                            color: AppColors.blackLv4,
                            size: 15,
                          ),
                          SizedBox(
                            width: AppSizes.padding / 4,
                          ),
                          Text(
                            datePromo ?? '',
                            overflow: TextOverflow.clip,
                            style: AppTextStyle.regular(
                              size: 12,
                              color: AppColors.blackLv4,
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: AppSizes.padding / 2),
                      Text(
                        subtitle ?? '',
                        overflow: TextOverflow.clip,
                        style: AppTextStyle.regular(
                          size: 10,
                          color: AppColors.blackLv4,
                        ),
                      )
                    ],
                  ),
                ],
              ),
              rightIcon == true
                  ? AppIconButton(
                      icon: Icon(
                        iconButton ?? Icons.circle_outlined,
                        color: AppColors.primary,
                      ),
                      buttonColor: Colors.transparent,
                      onTap: functionIconButton ?? () {},
                    )
                  : const SizedBox.shrink(),
            ],
          ),
          rightIcon == false ? editButtonDown() : const SizedBox.shrink(),
        ],
      ),
    );
  }

  Widget editButtonDown() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: AppSizes.padding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    detailDatePromo ?? '',
                    style: AppTextStyle.bold(size: 18),
                  ),
                  SizedBox(
                    height: AppSizes.padding / 2,
                  ),
                  Text(
                    'Masa Berlaku',
                    style: AppTextStyle.medium(
                      size: 12,
                      color: AppColors.blackLv4,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 12,
              ),
              height: 18,
              width: 1,
              color: AppColors.blackLv4,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: AppSizes.padding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    countPromo ?? '',
                    style: AppTextStyle.bold(size: 18),
                  ),
                  SizedBox(
                    height: AppSizes.padding / 2,
                  ),
                  Text(
                    'Pengguna Promo',
                    style: AppTextStyle.medium(
                      size: 12,
                      color: AppColors.blackLv4,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: AppSizes.padding,
        ),
        AppDivider(
          padding: EdgeInsets.symmetric(horizontal: AppSizes.padding, vertical: 0),
          thickness: 2,
          color: AppColors.blackLv7,
        ),
        Padding(
          padding: EdgeInsets.all(AppSizes.padding),
          child: AppButton(
            onTap: functionEditButton ?? () {},
            text: 'Edit',
            rounded: true,
            padding: EdgeInsets.symmetric(vertical: AppSizes.padding / 2),
          ),
        ),
      ],
    );
  }
}
