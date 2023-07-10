import 'package:flutter/material.dart';

import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_sizes.dart';
import '../../../app/theme/app_text_style.dart';
import '../../molecule/app_card.dart';
import '../../molecule/app_chips.dart';

class PaymentMethodCard extends StatelessWidget {
  final String title;
  final String? chipText;
  final List<Widget> children;
  final void Function()? functionChipButton;

  const PaymentMethodCard({
    super.key,
    required this.title,
    required this.children,
    this.functionChipButton,
    this.chipText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      width: MediaQuery.of(context).size.width,
      child: AppCard(
          width: MediaQuery.of(context).size.width,
          color: Colors.transparent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    style: AppTextStyle.bold(size: 18),
                  ),
                  AppChips(
                    borderWidth: 0,
                    text: chipText ?? 'Edit',
                    onTap: functionChipButton ?? () {},
                    isSelected: true,
                    leftIcon: Icons.mode_edit_rounded,
                    fontSize: 14,
                    padding: EdgeInsets.symmetric(
                      horizontal: AppSizes.padding / 1.5,
                      vertical: AppSizes.padding / 3,
                    ),
                  ),
                ],
              ),
              children != []
                  ? SizedBox(
                      height: AppSizes.padding,
                    )
                  : SizedBox.shrink(),
              ...children,
            ],
          )),
    );
  }
}
