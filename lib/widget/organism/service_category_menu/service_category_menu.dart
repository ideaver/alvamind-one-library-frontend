import 'package:flutter/material.dart';

import '../../../app/asset/app_assets.dart';
import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_sizes.dart';
import '../../../model/category_menu_model.dart';
import '../../molecule/app_category_menu.dart';

class ServiceCategory extends StatelessWidget {
  ServiceCategory({
    super.key,
  });

  final categoryMenusUp = [
    CategoryMenuModel(
      child: Image.asset(
        AppAssets.tshirtIcon,
        scale: 1.5,
      ),
      title: ' Pakaian  ',
      color: AppColors.greenLv6,
      onTap: () {},
    ),
    CategoryMenuModel(
      child: Image.asset(
        AppAssets.moneyyIcon,
        scale: 1.5,
      ),
      color: Color(0xFF9C27B0).withOpacity(0.36),
      title: 'Karpet',
      onTap: () {},
    ),
    CategoryMenuModel(
      child: Image.asset(
        AppAssets.mosqueIcon,
        scale: 1.5,
      ),
      title: 'Alat Ibadah ',
      onTap: () {},
    ),
    CategoryMenuModel(
      child: Image.asset(
        AppAssets.dollIcon,
        scale: 1.5,
      ),
      title: 'Boneka',
      onTap: () {},
      color: Color(0xFF246BFD).withOpacity(0.36),
    ),
  ];
  final categoryMenusDown = [
    CategoryMenuModel(
      child: Image.asset(
        AppAssets.sleepingIcon,
        scale: 1.5,
      ),
      title: 'Alat Tidur',
      color: Color(0xFFFF981F).withOpacity(0.36),
      onTap: () {},
    ),
    CategoryMenuModel(
      child: Image.asset(
        AppAssets.helmetIcon,
        scale: 1,
      ),
      color: Color(0xFF4AAF57).withOpacity(0.36),
      title: 'Helm',
      onTap: () {},
    ),
    CategoryMenuModel(
      child: Image.asset(
        AppAssets.bagIcon,
        scale: 1,
      ),
      color: Color(0xFF8BC255).withOpacity(0.36),
      title: 'Sepatu & Tas',
      onTap: () {},
    ),
    CategoryMenuModel(
      child: Image.asset(
        AppAssets.categoryIcon,
        scale: 1,
      ),
      color: Color(0xFFFF981F).withOpacity(0.36),
      title: 'Lainnya',
      onTap: () {},
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppCategoryMenu(
          spacing: AppSizes.padding * 1.5,
          categoryMenus: categoryMenusUp,
        ),
        SizedBox(
          height: AppSizes.padding,
        ),
        AppCategoryMenu(
          spacing: AppSizes.padding * 1.5,
          categoryMenus: categoryMenusDown,
        ),
      ],
    );
  }
}
