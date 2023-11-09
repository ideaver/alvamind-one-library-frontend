import 'package:alvamind_library/app/theme/app_sizes.dart';
import 'package:flutter/material.dart';

import '../../model/category_menu_model.dart';
import 'app_icon_button.dart';

class AppCategoryMenu extends StatelessWidget {
  final List<CategoryMenuModel> categoryMenus;
  final bool showTitle;
  final double? spacing;
  final double? runSpacing;

  const AppCategoryMenu({
    super.key,
    required this.categoryMenus,
    this.showTitle = true,
    this.spacing,
    this.runSpacing,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 114,
        mainAxisExtent: 108,
        mainAxisSpacing: runSpacing ?? AppSizes.padding / 6,
        crossAxisSpacing: spacing ?? AppSizes.padding / 6,
      ),
      itemCount: categoryMenus.length,
      itemBuilder: (context, i) {
        return AppIconButton(
          icon: categoryMenus[i].child,
          text: showTitle ? categoryMenus[i].title : null,
          onTap: categoryMenus[i].onTap,
          enable: categoryMenus[i].enable,
          buttonColor: categoryMenus[i].color,
          textStyle: categoryMenus[i].textStyle,
        );
      },
    );
  }
}
