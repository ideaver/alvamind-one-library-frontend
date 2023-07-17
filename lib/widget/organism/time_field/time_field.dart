import 'package:alvamind_library/widget/molecule/app_card_container.dart';
import 'package:alvamind_library/widget/molecule/app_chips.dart';
import 'package:flutter/material.dart';

import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_sizes.dart';
import '../../../app/theme/app_text_style.dart';
import '../../molecule/app_text_field.dart';

class TimeField extends StatefulWidget {
  @override
  State<TimeField> createState() => _TimeFieldState();
}

int chipsSelected = -1;

class _TimeFieldState extends State<TimeField> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AppCardContainer(
      child: Column(
        children: [
          timeFieldChild(
            Icons.calendar_month_sharp,
          ),
          SizedBox(
            height: AppSizes.padding,
          ),
          timeFieldChild(
            Icons.access_time,
          ),
          SizedBox(
            height: AppSizes.padding,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Waktu Mulai',
                style: AppTextStyle.bold(
                  size: 20,
                ),
              ),
              SizedBox(
                height: AppSizes.padding,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ...List.generate(4, (index) {
                      return Padding(
                        padding: index == 3 ? EdgeInsets.all(0) : EdgeInsets.only(right: AppSizes.padding),
                        child: AppChips(
                            text: '${09 + index}:00 AM',
                            onTap: () {
                              setState(() {
                                chipsSelected = index;
                              });
                            },
                            isSelected: chipsSelected == index ? true : false),
                      );
                    })
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget timeFieldChild(IconData icon) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Mulai',
                style: AppTextStyle.bold(
                  size: 20,
                ),
              ),
              SizedBox(
                height: AppSizes.padding,
              ),
              AppTextField(
                hintText: 'Mulai...',
                suffixIcon: icon,
                iconsColor: AppColors.black,
                onEditingComplete: () {},
              ),
            ],
          ),
        ),
        SizedBox(
          width: AppSizes.padding,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Selesai',
                style: AppTextStyle.bold(
                  size: 20,
                ),
              ),
              SizedBox(
                height: AppSizes.padding,
              ),
              AppTextField(
                hintText: 'Selesai...',
                suffixIcon: icon,
                iconsColor: AppColors.black,
                onEditingComplete: () {},
              ),
            ],
          ),
        ),
      ],
    );
  }
}
