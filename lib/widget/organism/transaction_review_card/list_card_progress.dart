import 'package:alvamind_library/widget/molecule/app_ink_container.dart';
import 'package:flutter/material.dart';

import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_sizes.dart';
import '../../../app/theme/app_text_style.dart';
import '../../molecule/app_icon_button.dart';
import '../../molecule/app_tags.dart';

class ListCard extends StatefulWidget {
  final String title;
  final String subtitle;
  final IconData? rightIcon;
  final IconData? leftIcon;
  final String? textTags;
  final void Function()? onTapChevronButton;
  final void Function()? onTapCard;
  const ListCard({
    super.key,
    required this.title,
    required this.subtitle,
    this.rightIcon,
    this.leftIcon,
    this.textTags,
    this.onTapChevronButton,
    this.onTapCard,
  });

  @override
  State<ListCard> createState() => _ListCardState();
}

class _ListCardState extends State<ListCard> {
  @override
  Widget build(BuildContext context) {
    return AppInkContainer(
      onTap: widget.onTapCard ?? () {},
      backgroundColor: AppColors.white,
      boxShadow: const [
        BoxShadow(
          color: AppColors.blackLv7,
          offset: Offset(0, 4),
          blurRadius: 60,
          spreadRadius: 0,
        ),
      ],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                widget.leftIcon,
                color: AppColors.primary,
              ),
              SizedBox(
                width: AppSizes.padding,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.subtitle,
                    style: AppTextStyle.medium(size: 14),
                  ),
                  Text(
                    widget.title,
                    style: AppTextStyle.bold(size: 18),
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: [
              AppTags(
                text: widget.textTags ?? '',
                color: AppColors.white,
                textColor: AppColors.primary,
                borderColor: AppColors.primary,
                borderWidth: 1,
              ),
              SizedBox(width: AppSizes.padding / 4),
              AppIconButton(
                padding: const EdgeInsets.all(0),
                buttonColor: AppColors.transparent,
                icon: Icon(widget.rightIcon),
                onTap: widget.onTapChevronButton ?? () {},
              )
            ],
          )
        ],
      ),
    );
  }
}
