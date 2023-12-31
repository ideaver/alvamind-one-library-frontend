import 'package:flutter/material.dart';

import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_sizes.dart';
import '../../../app/theme/app_text_style.dart';
import '../../atom/app_divider.dart';
import '../../molecule/app_card_container.dart';
import '../../molecule/app_long_card.dart';
import '../../molecule/app_tags.dart';
import '../order_type_info/order_type_info.dart';

class OutletHero extends StatelessWidget {
  final String nameOutlet;
  final String tagStatus;
  final String countReview;
  final String address;
  final String descriptionText;
  final String countStar;
  final Color? tagStatusColor;

  final void Function() onTapDeliveryButton;
  final void Function() onTapDropButton;
  final void Function() onTapServiceButton;
  final void Function() onTapDescription;

  const OutletHero({
    super.key,
    required this.address,
    required this.countReview,
    required this.countStar,
    required this.descriptionText,
    required this.nameOutlet,
    required this.onTapDeliveryButton,
    required this.onTapDropButton,
    required this.onTapServiceButton,
    required this.onTapDescription,
    required this.tagStatus,
    this.tagStatusColor,
  });

  @override
  Widget build(BuildContext context) {
    return AppCardContainer(
      padding: EdgeInsets.all(AppSizes.padding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            nameOutlet,
            style: AppTextStyle.bold(size: 32),
          ),
          SizedBox(height: AppSizes.padding),
          AppLongCard(
            padding: EdgeInsets.zero,
            children: [
              AppTags(
                text: tagStatus,
                color: tagStatusColor ?? AppColors.orangeLv1,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.star_rounded,
                    color: AppColors.orangeLv1,
                  ),
                  Text(
                    '$countStar ($countReview ulasan)',
                    style: AppTextStyle.medium(size: 16),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: AppSizes.padding),
          Row(
            children: [
              const Icon(
                Icons.location_on,
                size: 18,
                color: AppColors.primary,
              ),
              SizedBox(width: AppSizes.padding / 2),
              Expanded(
                child: Text(
                  address,
                  overflow: TextOverflow.fade,
                  maxLines: 2,
                  softWrap: true,
                  style: AppTextStyle.regular(
                    size: 14,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: AppSizes.padding),
          OrderTypeInfo(
            onlyOrder: true,
            fontSize: 12,
            deliveryButton: onTapDeliveryButton,
            dropButton: onTapDropButton,
            selfButton: onTapServiceButton,
          ),
          const AppDivider(
            thickness: 2,
            color: AppColors.blackLv8,
          ),
          GestureDetector(
            onTap: onTapDescription,
            child: RichText(
              text: TextSpan(
                text: descriptionText,
                style: AppTextStyle.regular(size: 16),
                children: [
                  TextSpan(
                    text: ' Selengkapnya',
                    style: AppTextStyle.bold(
                      size: 16,
                      color: AppColors.primary,
                    ),
                  ),
                ],
              ),
              maxLines: 5,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
