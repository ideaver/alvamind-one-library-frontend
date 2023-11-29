import 'package:alvamind_library/app/theme/app_shadows.dart';
import 'package:flutter/material.dart';

import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_sizes.dart';
import '../../../app/theme/app_text_style.dart';
import '../../molecule/app_card_container.dart';
import '../../molecule/app_progress_line.dart';

class CardReview extends StatelessWidget {
  final double starsOveral;
  final int totalReviews;
  final double total5Stars;
  final double total4Stars;
  final double total3Stars;
  final double total2Stars;
  final double total1Stars;

  const CardReview({
    super.key,
    required this.starsOveral,
    required this.totalReviews,
    required this.total5Stars,
    required this.total4Stars,
    required this.total3Stars,
    required this.total2Stars,
    required this.total1Stars,
  });

  @override
  Widget build(BuildContext context) {
    return AppCardContainer(
      boxShadow: [AppShadows.cardShadow1],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      '$starsOveral',
                      style: AppTextStyle.bold(size: 32),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(6),
                      child: Text(
                        '/5',
                        style: AppTextStyle.medium(size: 14),
                      ),
                    ),
                  ],
                ),
                Text(
                  'Berdasarkan $totalReviews Ulasan',
                  style: AppTextStyle.medium(
                    size: 12,
                    color: AppColors.blackLv5,
                  ),
                ),
                SizedBox(height: AppSizes.padding / 2),
                Row(
                  children: [
                    ...List.generate(5, (index) {
                      return Icon(
                        Icons.star_rate_rounded,
                        size: 25,
                        color: index == starsOveral.round() ? AppColors.blackLv4 : AppColors.orangeLv1,
                      );
                    })
                  ],
                ),
              ],
            ),
          ),
          Column(
            children: [
              lineProgress('5 bintang', total5Stars),
              SizedBox(height: AppSizes.padding / 4),
              lineProgress('4 bintang', total4Stars),
              SizedBox(height: AppSizes.padding / 4),
              lineProgress('3 bintang', total3Stars),
              SizedBox(height: AppSizes.padding / 4),
              lineProgress('2 bintang', total2Stars),
              SizedBox(height: AppSizes.padding / 4),
              lineProgress(' 1 bintang', total1Stars),
            ],
          )
        ],
      ),
    );
  }

  Widget lineProgress(String text, double valueStar) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: AppTextStyle.medium(
            size: 12,
            color: AppColors.blackLv5,
          ),
        ),
        SizedBox(width: AppSizes.padding / 2),
        AppProgressLine(
          value: valueStar,
          maxValue: 100,
          lineWidth: 80,
          lineHeight: 6,
          showLabel: false,
          lineColor: AppColors.orangeLv1,
        ),
      ],
    );
  }
}
