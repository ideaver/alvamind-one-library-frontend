import 'package:flutter/material.dart';

import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_shadows.dart';
import '../../../app/theme/app_sizes.dart';
import '../../../app/theme/app_text_style.dart';
import '../../molecule/app_Toggle.dart';
import '../../molecule/app_card_container.dart';
import '../../molecule/app_chips.dart';

class OperasionalCard extends StatefulWidget {
  final String? title;
  final String? dayTitle;
  final String? time;
  final String? text;
  final bool value;
  final bool enabled;
  final bool isCustom;
  final bool withSubtitle;
  final void Function()? chipCloseButton;
  final dynamic Function(bool) onChanged;

  const OperasionalCard({
    super.key,
    this.value = false,
    this.enabled = true,
    this.dayTitle,
    this.text,
    this.time,
    this.chipCloseButton,
    this.isCustom = false,
    this.title,
    this.withSubtitle = true,
    required this.onChanged,
  });

  @override
  State<OperasionalCard> createState() => _OperasionalCardState();
}

class _OperasionalCardState extends State<OperasionalCard> {
  bool switchValue = true;

  @override
  void initState() {
    switchValue = widget.value;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppCardContainer(
          padding: EdgeInsets.all(AppSizes.padding * 1.2),
          boxShadow: [AppShadows.cardShadow1],
          child: Column(
            children: [
              widget.isCustom
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          widget.title ?? '',
                          style: AppTextStyle.bold(size: 20),
                        ),
                        AppToggle(
                          value: widget.value,
                          onChanged: (val) {
                            switchValue = val;
                            setState(() {});
                            widget.onChanged(val);
                          },
                        ),
                      ],
                    )
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            AppToggle(
                              value: widget.value,
                              onChanged: (val) {
                                switchValue = val;
                                setState(() {});
                                widget.onChanged(val);
                              },
                            ),
                            SizedBox(
                              width: AppSizes.padding / 2,
                            ),
                            Text(
                              widget.dayTitle ?? '',
                              style: AppTextStyle.bold(size: 20),
                            )
                          ],
                        ),
                        !widget.enabled
                            ? AppChips(
                                text: 'Tutup',
                                fontSize: 14,
                                textStyle: AppTextStyle.bold(
                                  size: 14,
                                  color: AppColors.blackLv3,
                                ),
                                selectedColor: AppColors.blackLv6,
                                leftIcon: Icons.login_rounded,
                                unselectedColor: AppColors.blackLv3,
                                borderWidth: 0,
                                padding: EdgeInsets.symmetric(
                                  vertical: AppSizes.padding / 2,
                                  horizontal: AppSizes.padding,
                                ),
                                onTap: widget.chipCloseButton ?? () {},
                                isSelected: true,
                              )
                            : Row(
                                children: [
                                  Text(
                                    widget.time ?? '',
                                    style: AppTextStyle.medium(size: 16),
                                  ),
                                  SizedBox(
                                    width: AppSizes.padding / 2,
                                  ),
                                  AppToggle(
                                    value: switchValue,
                                    onChanged: (val) {
                                      switchValue = val;
                                      setState(() {});
                                    },
                                  ),
                                ],
                              ),
                      ],
                    ),
              !widget.enabled || !widget.withSubtitle ? const SizedBox.shrink() : SizedBox(height: AppSizes.padding),
              !widget.enabled || !widget.withSubtitle
                  ? const SizedBox.shrink()
                  : Text(
                      widget.text ??
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                      style: AppTextStyle.medium(size: 14),
                    )
            ],
          ),
        )
      ],
    );
  }
}
