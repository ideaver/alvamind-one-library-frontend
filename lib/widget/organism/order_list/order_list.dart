import 'package:alvamind_library/app/theme/app_text_style.dart';
import 'package:alvamind_library/widget/atom/app_divider.dart';
import 'package:alvamind_library/widget/atom/app_image.dart';
import 'package:alvamind_library/widget/molecule/app_card_container.dart';

import 'package:flutter/material.dart';

import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_sizes.dart';
import '../../molecule/app_expanel_List.dart';
import '../../molecule/app_icon_button.dart';
import '../accordion/accordion_question_card.dart';

class OrderList extends StatefulWidget {
  final Color? backgroundColor;
  final EdgeInsetsGeometry? padding;
  final Widget? orderCard;
  final Widget? map;
  final String? dateTime;
  final String? location;
  final String? title;
  final String? description;
  final List<BoxShadow>? boxShadow;

  const OrderList({
    super.key,
    this.padding,
    this.backgroundColor,
    this.orderCard,
    this.map,
    this.dateTime,
    this.description,
    this.location,
    this.title,
    this.boxShadow,
  });

  @override
  State<OrderList> createState() => _OrderListState();
}

class _OrderListState extends State<OrderList> {
  bool isShow = false;

  @override
  Widget build(BuildContext context) {
    return AppCardContainer(
      boxShadow: widget.boxShadow ?? [],
      padding: widget.padding ?? EdgeInsets.all(AppSizes.padding),
      backgroundColor: widget.backgroundColor ?? AppColors.white,
      borderRadius: BorderRadius.circular(20),
      child: Column(
        children: [
          widget.orderCard ?? const SizedBox.shrink(),
          AppDivider(
            thickness: 2,
            color: AppColors.blackLv8,
            padding: EdgeInsets.symmetric(vertical: AppSizes.padding),
          ),
          isShow == false
              ? const SizedBox.shrink()
              : Column(
                  children: [
                    textBetween('DateTime', widget.dateTime ?? 'Datetime'),
                    SizedBox(height: AppSizes.padding / 2),
                    textBetween('Location', widget.location ?? 'Location'),
                    SizedBox(height: AppSizes.padding),
                    Container(
                      height: 250,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: AppColors.primary,
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            randomImage,
                          ),
                        ),
                      ),
                      child: widget.map ?? const Center(),
                    ),
                    SizedBox(height: AppSizes.padding),
                    AppExpansionListTile(
                      title: widget.title ?? 'Alasan',
                      expand: true,
                      backgroundColor: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                          color: AppColors.blackLv7,
                          offset: Offset(0, 4),
                          blurRadius: 40,
                          spreadRadius: -10,
                        ),
                      ],
                      children: [
                        QuestionText(
                          text: widget.description ?? 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua  sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                          color: AppColors.black,
                          padding: const EdgeInsets.all(0),
                        )
                      ],
                    ),
                    SizedBox(height: AppSizes.padding),
                  ],
                ),
          AppIconButton(
            buttonColor: AppColors.transparent,
            padding: const EdgeInsets.all(4),
            icon: Icon(
              isShow == false ? Icons.keyboard_arrow_down : Icons.keyboard_arrow_up,
              size: 20,
            ),
            onTap: () {
              setState(() {
                isShow == false ? isShow = true : isShow = false;
              });
            },
          )
        ],
      ),
    );
  }

  Widget textBetween(String leftText, String rightText) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          leftText,
          style: AppTextStyle.medium(
            size: 14,
            color: AppColors.blackLv4,
          ),
        ),
        Text(
          rightText,
          style: AppTextStyle.bold(
            size: 16,
            color: AppColors.black,
          ),
        )
      ],
    );
  }
}
