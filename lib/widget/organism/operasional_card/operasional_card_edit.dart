import 'package:flutter/material.dart';

import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_sizes.dart';
import '../../../app/theme/app_text_style.dart';
import '../../molecule/app_Toggle.dart';
import '../../molecule/app_card_container.dart';
import '../../molecule/app_text_field.dart';

class OperasionalCardEdit extends StatefulWidget {
  final String? dayTitle;
  final String? time;
  final String? text;

  const OperasionalCardEdit({
    super.key,
    this.dayTitle,
    this.text,
    this.time,
  });

  @override
  State<OperasionalCardEdit> createState() => _OperasionalCardEditState();
}

class _OperasionalCardEditState extends State<OperasionalCardEdit> {
  bool value1 = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppCardContainer(
          padding: EdgeInsets.all(AppSizes.padding * 1.2),
          boxShadow: const [
            BoxShadow(
              color: AppColors.blackLv7,
              offset: Offset(0, 4),
              blurRadius: 60,
              spreadRadius: 0,
            ),
          ],
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      AppToggle(
                        value: value1,
                        onChanged: (val) {
                          value1 = val;
                          setState(() {});
                        },
                      ),
                      SizedBox(
                        width: AppSizes.padding / 2,
                      ),
                      Text(
                        widget.dayTitle ?? '',
                        style: AppTextStyle.bold(size: 20),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        widget.time ?? '',
                        style: AppTextStyle.medium(size: 16),
                      ),
                      SizedBox(
                        width: AppSizes.padding / 2,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: AppSizes.padding,
              ),
              Row(
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
                          suffixIcon: Icons.access_time,
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
                          suffixIcon: Icons.access_time,
                          iconsColor: AppColors.black,
                          onEditingComplete: () {},
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
