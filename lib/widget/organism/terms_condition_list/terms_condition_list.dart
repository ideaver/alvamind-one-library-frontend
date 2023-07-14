import 'package:flutter/material.dart';

import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_sizes.dart';
import '../../../app/theme/app_text_style.dart';
import '../../molecule/app_expansion_list_tile.dart';
import '../accordion/accordion_question_card.dart';

class TermsConditionList extends StatelessWidget {
  const TermsConditionList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Terms Condition List',
          style: AppTextStyle.bold(
            size: 32,
            color: AppColors.black,
          ),
        ),
        SizedBox(
          height: AppSizes.padding,
        ),
        ...List.generate(4, (i) {
          return Padding(
            padding: i == 4 ? EdgeInsets.all(0) : EdgeInsets.only(bottom: AppSizes.padding),
            child: AppExpansionListTile(
              title: '${i + 1} . Lorem ipsum dolor sit amet ',
              titleColor: AppColors.black,
              expand: true,
              backgroundColor: AppColors.white,
              children: [
                QuestionText(
                  text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua  sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                  color: AppColors.black,
                  padding: EdgeInsets.all(AppSizes.padding / 10),
                  backgroundColor: AppColors.transparent,
                )
              ],
            ),
          );
        })
      ],
    );
  }
}
