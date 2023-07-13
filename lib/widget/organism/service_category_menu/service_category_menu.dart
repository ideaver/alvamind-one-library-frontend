import 'package:alvamind_library/app/theme/app_text_style.dart';
import 'package:alvamind_library/widget/molecule/app_icon_button.dart';
import 'package:flutter/material.dart';

import '../../../app/asset/app_assets.dart';
import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_sizes.dart';
import '../../../model/category_menu_model.dart';

class ServiceCategory extends StatelessWidget {
  ServiceCategory({
    super.key,
  });

  final categoryMenusUp = [
    AppIconButton(
      icon: Image.asset(
        AppAssets.tshirtIcon,
        fit: BoxFit.cover,
        scale: 2,
      ),
      text: 'Pakaian',
      textStyle: AppTextStyle.medium(size: 12),
      buttonColor: AppColors.greenLv6,
      onTap: () {},
    ),
    AppIconButton(
      icon: Image.asset(
        AppAssets.moneyyIcon,
        fit: BoxFit.cover,
        scale: 2,
      ),
      buttonColor: Color(0xFF9C27B0).withOpacity(0.36),
      text: 'Karpet',
      textStyle: AppTextStyle.medium(size: 12),
      onTap: () {},
    ),
    AppIconButton(
      icon: Image.asset(
        AppAssets.mosqueIcon,
        fit: BoxFit.cover,
        scale: 2,
      ),
      text: 'Alat Ibadah',
      textStyle: AppTextStyle.medium(size: 12),
      onTap: () {},
    ),
    AppIconButton(
      icon: Image.asset(
        AppAssets.dollIcon,
        fit: BoxFit.cover,
        scale: 2,
      ),
      text: 'Boneka',
      textStyle: AppTextStyle.medium(size: 12),
      onTap: () {},
      buttonColor: Color(0xFF246BFD).withOpacity(0.36),
    ),
    AppIconButton(
      icon: Image.asset(
        AppAssets.sleepingIcon,
        fit: BoxFit.cover,
        scale: 2,
      ),
      textStyle: AppTextStyle.medium(size: 12),
      text: 'Alat Tidur',
      buttonColor: Color(0xFFFF981F).withOpacity(0.36),
      onTap: () {},
    ),
    AppIconButton(
      icon: Image.asset(
        AppAssets.helmetIcon,
        fit: BoxFit.cover,
        scale: 2,
      ),
      buttonColor: Color(0xFF4AAF57).withOpacity(0.36),
      textStyle: AppTextStyle.medium(size: 12),
      text: 'Helm',
      onTap: () {},
    ),
    AppIconButton(
      icon: Image.asset(
        AppAssets.bagIcon,
        fit: BoxFit.cover,
        scale: 2,
      ),
      buttonColor: Color(0xFF8BC255).withOpacity(0.36),
      textStyle: AppTextStyle.medium(size: 12),
      text: 'Sepatu & Tas',
      onTap: () {},
    ),
    AppIconButton(
      icon: Image.asset(
        AppAssets.categoryIcon,
        fit: BoxFit.cover,
        scale: 2,
      ),
      buttonColor: Color(0xFFFF981F).withOpacity(0.36),
      textStyle: AppTextStyle.medium(size: 12),
      text: 'Lainnya',
      onTap: () {},
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 400,
        width: 300,
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
          itemBuilder: (_, index) => Container(
            child: categoryMenusUp[index],
          ),
          itemCount: 8,
        ));
  }
}
