import 'package:flutter/material.dart';

import '../../app/theme/app_colors.dart';
import '../../app/theme/app_text_style.dart';
import '../atom/app_tool_tip.dart';
import 'app_icon_button.dart';

class AppTableNavigation extends StatelessWidget {
  final String? title;
  final TextStyle? titleStyle;
  final int? maxRows;
  final int currentPageIndex;
  final int? maxPageIndex;
  final Function(int)? onSelectedMaxRows;
  final Function()? onTapFirstPage;
  final Function()? onTapLastPage;
  final Function()? onTapPrevPage;
  final Function()? onTapNextPage;

  const AppTableNavigation({
    Key? key,
    this.title,
    this.titleStyle,
    this.maxRows,
    this.onSelectedMaxRows,
    this.currentPageIndex = 1,
    this.maxPageIndex,
    this.onTapFirstPage,
    this.onTapLastPage,
    this.onTapPrevPage,
    this.onTapNextPage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 12,
      runSpacing: 8,
      alignment: WrapAlignment.center,
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        titleWidget(),
        rowsDropDown(),
        pageIndexes(),
        pageNavigationButtons(),
      ],
    );
  }

  Widget titleWidget() {
    if (title == null) {
      return const SizedBox.shrink();
    }

    return Text(
      title!,
      style: titleStyle ?? AppTextStyle.bodyLarge(fontWeight: AppFontWeight.medium),
    );
  }

  Widget rowsDropDown() {
    if (maxRows == null) {
      return const SizedBox.shrink();
    }

    return AppToolTipMenu(
      onTapItem: onSelectedMaxRows ?? (i) {},
      borderRadius: 100,
      borderWidth: 1,
      borderColor: AppColors.blackLv8,
      title: '$maxRows',
      children: [
        ...List.generate(
          maxRows!,
          (index) => Text(
            '${index + 1}',
            style: titleStyle ?? AppTextStyle.bodyLarge(fontWeight: AppFontWeight.medium),
          ),
        ),
      ],
    );
  }

  Widget pageIndexes() {
    if (maxPageIndex == null) {
      return const SizedBox.shrink();
    }

    return Text(
      '$currentPageIndex-$maxPageIndex of $maxPageIndex',
      style: titleStyle ?? AppTextStyle.bodyLarge(fontWeight: AppFontWeight.medium),
    );
  }

  Widget pageNavigationButtons() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        onTapFirstPage == null
            ? const SizedBox.shrink()
            : AppIconButton(
                padding: const EdgeInsets.all(4),
                buttonColor: AppColors.transparent,
                icon: const Icon(
                  Icons.first_page,
                  color: AppColors.blackLv1,
                  size: 28,
                ),
                onTap: onTapFirstPage!,
              ),
        const SizedBox(width: 18),
        onTapPrevPage == null
            ? const SizedBox.shrink()
            : AppIconButton(
                padding: const EdgeInsets.all(8),
                buttonColor: AppColors.transparent,
                icon: const Icon(
                  Icons.arrow_back_ios_rounded,
                  color: AppColors.blackLv1,
                  size: 20,
                ),
                onTap: onTapPrevPage!,
              ),
        const SizedBox(width: 18),
        onTapNextPage == null
            ? const SizedBox.shrink()
            : AppIconButton(
                padding: const EdgeInsets.all(8),
                buttonColor: AppColors.transparent,
                icon: const Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: AppColors.blackLv1,
                  size: 20,
                ),
                onTap: onTapNextPage!,
              ),
        const SizedBox(width: 18),
        onTapLastPage == null
            ? const SizedBox.shrink()
            : AppIconButton(
                padding: const EdgeInsets.all(4),
                buttonColor: AppColors.transparent,
                icon: const Icon(
                  Icons.last_page,
                  color: AppColors.blackLv1,
                  size: 28,
                ),
                onTap: onTapLastPage!,
              ),
      ],
    );
  }
}