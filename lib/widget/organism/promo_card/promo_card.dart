import 'package:flutter/material.dart';

import '../../../app/asset/app_assets.dart';
import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_sizes.dart';
import '../../../app/theme/app_text_style.dart';
import '../../atom/app_divider.dart';
import '../../atom/app_image.dart';
import '../../molecule/app_button.dart';
import '../../molecule/app_long_card.dart';
import '../../molecule/app_radio.dart';

class PromoCard extends StatefulWidget {
  final String title;
  final String? subtitle;
  final String? datePromo;
  final String? detailDatePromo;
  final String? countPromo;
  final IconData? iconButton;
  final String? image;
  final bool isOwner;
  final bool isSelected;
  final List<BoxShadow>? boxShadow;
  final void Function()? onTapEditButton;
  final void Function(bool)? onChanged;

  const PromoCard({
    super.key,
    required this.title,
    this.datePromo,
    this.iconButton,
    this.image,
    this.subtitle,
    this.isOwner = false,
    this.isSelected = false,
    this.countPromo,
    this.detailDatePromo,
    this.boxShadow,
    this.onTapEditButton,
    this.onChanged,
  });

  @override
  State<PromoCard> createState() => _PromoCardState();
}

class _PromoCardState extends State<PromoCard> {
  bool isSelected = false;

  @override
  void initState() {
    isSelected = widget.isSelected;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: widget.boxShadow ?? [],
      ),
      child: Column(
        children: [
          AppLongCard(
            backgroundColor: AppColors.transparent,
            children: [
              Expanded(
                child: Row(
                  children: [
                    AppImage(
                      image: widget.image ?? randomImage,
                      imgProvider: ImgProvider.assetImage,
                      width: 60,
                    ),
                    SizedBox(width: AppSizes.padding),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.title,
                            softWrap: true,
                            maxLines: 3,
                            overflow: TextOverflow.fade,
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
                                widget.datePromo ?? '',
                                softWrap: true,
                                maxLines: 3,
                                overflow: TextOverflow.fade,
                                style: AppTextStyle.regular(
                                  size: 12,
                                  color: AppColors.blackLv4,
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: AppSizes.padding / 2),
                          Text(
                            widget.subtitle ?? '',
                            softWrap: true,
                            maxLines: 3,
                            overflow: TextOverflow.fade,
                            style: AppTextStyle.regular(
                              size: 10,
                              color: AppColors.blackLv4,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              !widget.isOwner
                  ? AppRadio(
                      value: widget.isSelected,
                      groupValue: true,
                      onChanged: (value) {
                        if (value != null) {
                          isSelected = value as bool;
                          setState(() {});
                        }

                        if (widget.onChanged != null) {
                          widget.onChanged!(isSelected);
                        }
                      },
                    )
                  : const SizedBox.shrink(),
            ],
          ),
          widget.isOwner ? editButtonDown() : const SizedBox.shrink(),
        ],
      ),
    );
  }

  Widget editButtonDown() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    widget.detailDatePromo ?? '',
                    textAlign: TextAlign.center,
                    softWrap: true,
                    maxLines: 3,
                    overflow: TextOverflow.fade,
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
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: AppSizes.padding),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      widget.countPromo ?? '',
                      textAlign: TextAlign.center,
                      style: AppTextStyle.bold(size: 18),
                    ),
                    SizedBox(
                      height: AppSizes.padding / 2,
                    ),
                    Text(
                      'Pengguna Promo',
                      textAlign: TextAlign.center,
                      style: AppTextStyle.medium(
                        size: 12,
                        color: AppColors.blackLv4,
                      ),
                    ),
                  ],
                ),
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
            leftIcon: CustomIcon.editPenIcon,
            onTap: widget.onTapEditButton ?? () {},
            text: 'Edit',
            rounded: true,
            padding: EdgeInsets.symmetric(vertical: AppSizes.padding / 2),
          ),
        ),
      ],
    );
  }
}
