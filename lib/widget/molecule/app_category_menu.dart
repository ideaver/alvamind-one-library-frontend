import 'package:flutter/material.dart';

import '../../app/theme/app_sizes.dart';
import '../../model/category_menu_model.dart';
import 'app_icon_button.dart';

class AppCategoryMenu extends StatelessWidget {
  final List<CategoryMenuModel> categoryMenus;
  final bool showTitle;
  final bool expanded;
  final double? spacing;
  final double? runSpacing;
  final WrapAlignment wrapAlignment;

  const AppCategoryMenu({
    super.key,
    required this.categoryMenus,
    this.showTitle = true,
    this.expanded = false,
    this.spacing,
    this.runSpacing,
    this.wrapAlignment = WrapAlignment.start,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: expanded ? double.maxFinite : null,
      child: Wrap(
        alignment: wrapAlignment,
        spacing: spacing ?? AppSizes.padding,
        runSpacing: runSpacing ?? AppSizes.padding,
        children: [
          ...List.generate(categoryMenus.length, (i) {
            return AppIconButton(
              icon: categoryMenus[i].child,
              text: showTitle ? categoryMenus[i].title : null,
              onTap: categoryMenus[i].onTap,
              enable: categoryMenus[i].enable,
              buttonColor: categoryMenus[i].color,
              textStyle: categoryMenus[i].textStyle,
            );
          })
        ],
      ),
    );
  }
}
