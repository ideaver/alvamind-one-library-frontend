import 'package:alvamind_library/widget/molecule/app_radio.dart';
import 'package:flutter/material.dart';

import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_sizes.dart';
import '../../../app/theme/app_text_style.dart';
import '../../atom/app_image.dart';
import '../../molecule/app_ink_container.dart';

class PaymentCard extends StatefulWidget {
  final bool isSelected;
  final bool enabled;
  final Widget? trailing;
  final String? image;
  final String title;
  final String? subtitle;
  final Color? backgroundColor;
  final Color? titleColor;
  final Color? subtitleColor;
  final BorderRadius? borderRadius;
  final List<BoxShadow>? boxShadow;
  final EdgeInsets? padding;
  final TextStyle? titleStyle;
  final TextStyle? subtitleStyle;
  final void Function(bool)? onChanged;

  const PaymentCard({
    super.key,
    this.isSelected = false,
    this.enabled = true,
    this.image,
    this.onChanged,
    this.subtitle,
    this.subtitleColor,
    this.titleColor,
    this.trailing,
    this.backgroundColor,
    this.boxShadow,
    this.padding,
    this.subtitleStyle,
    this.titleStyle,
    this.borderRadius,
    required this.title,
  });

  @override
  State<PaymentCard> createState() => _PaymentCardState();
}

class _PaymentCardState extends State<PaymentCard> {
  bool isSelected = false;

  @override
  void initState() {
    isSelected = widget.isSelected;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AppInkContainer(
      padding: widget.padding ?? EdgeInsets.all(AppSizes.padding),
      boxShadow: widget.boxShadow ?? [],
      onTap: () {
        isSelected = !isSelected;
        setState(() {});

        if (widget.onChanged != null) {
          widget.onChanged!(isSelected);
        }
      },
      backgroundColor: widget.backgroundColor,
      borderRadius: widget.borderRadius,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              AppImage(
                image: widget.image ?? '',
                imgProvider: ImgProvider.assetImage,
                width: 32,
              ),
              SizedBox(width: AppSizes.padding),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title,
                    style: widget.titleStyle ?? AppTextStyle.bold(size: 18),
                  ),
                  widget.subtitle != null ? SizedBox(height: AppSizes.padding / 2) : const SizedBox.shrink(),
                  widget.subtitle != null
                      ? Text(
                          widget.subtitle!,
                          style: widget.subtitleStyle ??
                              AppTextStyle.regular(
                                size: 14,
                                color: AppColors.blackLv5,
                              ),
                        )
                      : const SizedBox.shrink(),
                ],
              ),
            ],
          ),
          Row(
            children: [
              widget.trailing == null ? const SizedBox.shrink() : widget.trailing!,
              AppRadio(
                value: widget.isSelected,
                groupValue: true,
                onChanged: (value) {
                  if (value != null) {
                    isSelected = value as bool;
                    setState(() {});
                  }

                  if (widget.onChanged != null) {
                    widget.onChanged!(isSelected);
                  }
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
