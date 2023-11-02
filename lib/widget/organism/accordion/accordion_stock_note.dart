import 'package:flutter/material.dart';

import '../../../app/const/countries.dart';
import '../../../app/const/unit_weights.dart';
import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_sizes.dart';
import '../../../app/theme/app_text_style.dart';
import '../../../model/drop_down_model.dart';
import '../../../model/unit_weight_model.dart';
import '../../molecule/app_drop_down.dart';
import '../../molecule/app_expansion_list_tile.dart';
import '../../molecule/app_text_field.dart';

class AccordionStockNote extends StatelessWidget {
  final dynamic Function(String)? onChangeUpInput;
  final dynamic Function(String)? onChangeDownInput;
  final dynamic Function()? onEditingCompleteUpInput;
  final dynamic Function()? onEditingCompleteDownInput;
  final TextEditingController? controllerUpInput;
  final TextEditingController? controllerDownInput;

  const AccordionStockNote({
    super.key,
    this.controllerDownInput,
    this.controllerUpInput,
    this.onChangeDownInput,
    this.onChangeUpInput,
    this.onEditingCompleteDownInput,
    this.onEditingCompleteUpInput,
  });

  @override
  Widget build(BuildContext context) {
    UnitWeightModel unitWeight = unitWeights.first;

    return AppExpansionListTile(
      title: 'Pengingat Stok',
      expand: true,
      backgroundColor: AppColors.white,
      paddingChild: EdgeInsets.all(AppSizes.padding),
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Stok minimum Perusahaan',
              style: AppTextStyle.bodyMedium(
                fontWeight: AppFontWeight.medium,
              ),
            ),
            SizedBox(
              height: AppSizes.padding,
            ),
            Row(
              children: [
                Expanded(
                  child: AppTextField(
                    hintText: '00.00',
                    controller: controllerUpInput,
                    onChanged: onChangeUpInput ?? (String) {},
                    onEditingComplete: onEditingCompleteUpInput ?? () {},
                  ),
                ),
                SizedBox(
                  width: AppSizes.padding / 2,
                ),
                SizedBox(
                  width: 100,
                  child: AppDropDown(
                    hintStyle: AppTextStyle.medium(
                      size: 14,
                      color: AppColors.black,
                    ),
                    iconsColor: AppColors.black,
                    contentPadding: EdgeInsets.all(AppSizes.padding),
                    onTapItem: (item) {
                      unitWeight = unitWeights.firstWhere((e) => e.code == item.value);
                    },
                    hintText: 'KG',
                    selectedItem: unitWeight.code,
                    items: List.generate(
                      countries.length,
                      (i) => DropDownModel(text: unitWeights[i].code, value: unitWeights[i].code),
                    ),
                    itemsBuilder: (item) {
                      return Text(
                        item.text,
                        style: AppTextStyle.semibold(size: 12),
                      );
                    },
                  ),
                ),
              ],
            )
          ],
        ),
        SizedBox(
          height: AppSizes.padding,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Stok minimum Outlet',
              style: AppTextStyle.bodyMedium(
                fontWeight: AppFontWeight.medium,
              ),
            ),
            SizedBox(
              height: AppSizes.padding,
            ),
            Row(
              children: [
                Expanded(
                  child: AppTextField(
                    hintText: '00.00',
                    controller: controllerDownInput,
                    onChanged: onChangeDownInput ?? (String) {},
                    onEditingComplete: onEditingCompleteDownInput ?? () {},
                  ),
                ),
                SizedBox(
                  width: AppSizes.padding / 2,
                ),
                SizedBox(
                  width: 100,
                  child: AppDropDown(
                    hintStyle: AppTextStyle.medium(
                      size: 14,
                      color: AppColors.black,
                    ),
                    iconsColor: AppColors.black,
                    contentPadding: EdgeInsets.all(AppSizes.padding),
                    onTapItem: (item) {
                      unitWeight = unitWeights.firstWhere((e) => e.code == item.value);
                    },
                    hintText: 'KG',
                    selectedItem: unitWeight.name,
                    items: List.generate(
                      countries.length,
                      (i) => DropDownModel(text: unitWeights[i].code, value: unitWeights[i].code),
                    ),
                    itemsBuilder: (item) {
                      return Text(
                        item.text,
                        style: AppTextStyle.semibold(size: 12),
                      );
                    },
                  ),
                ),
              ],
            )
          ],
        )
      ],
    );
  }
}
