import 'package:flutter/material.dart';

import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_sizes.dart';
import '../../molecule/app_icon_button.dart';
import '../../molecule/app_long_card.dart';
import '../../molecule/app_text_field.dart';

class ChatForm extends StatefulWidget {
  final String textPlaceholder;
  final void Function()? onChanged;
  final void Function()? onTapEmoticonButton;
  final void Function()? onTapAddButton;
  final void Function()? onTapCameraButton;
  final void Function()? onTapSendButton;

  const ChatForm({
    super.key,
    required this.textPlaceholder,
    this.onTapAddButton,
    this.onTapCameraButton,
    this.onTapEmoticonButton,
    this.onTapSendButton,
    this.onChanged,
  });

  @override
  State<ChatForm> createState() => _ChatFormState();
}

class _ChatFormState extends State<ChatForm> {
  bool showRightButton = true;
  @override
  Widget build(BuildContext context) {
    return AppLongCard(
      padding: const EdgeInsets.all(0),
      children: [
        Expanded(
          child: Stack(
            alignment: Alignment.centerRight,
            children: [
              AppTextField(
                hintText: widget.textPlaceholder,
                textInputType: TextInputType.text,
                prefixIcon: Icons.insert_emoticon,
                onChanged: (value) {
                  setState(() {
                    showRightButton = false;
                  });
                },
                onEditingComplete: () {
                  showRightButton = true;
                  widget.onChanged;
                },
              ),
              showRightButton == false
                  ? const SizedBox.shrink()
                  : Positioned(
                      right: 10,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          AppIconButton(
                            padding: EdgeInsets.all(0),
                            buttonColor: AppColors.transparent,
                            icon: const Icon(
                              Icons.add,
                              size: 18,
                              color: AppColors.blackLv4,
                            ),
                            onTap: widget.onTapAddButton ?? () {},
                          ),
                          SizedBox(
                            width: AppSizes.padding / 2,
                          ),
                          AppIconButton(
                            buttonColor: AppColors.transparent,
                            padding: EdgeInsets.all(0),
                            icon: const Icon(
                              Icons.camera_alt,
                              size: 18,
                              color: AppColors.blackLv4,
                            ),
                            onTap: widget.onTapCameraButton ?? () {},
                          ),
                        ],
                      ),
                    ),
            ],
          ),
        ),
        SizedBox(
          width: AppSizes.padding / 2,
        ),
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              AppColors.blueLv2,
              AppColors.blueLv1,
            ]),
            boxShadow: [
              BoxShadow(
                color: AppColors.blueLv3,
                offset: Offset(
                  4.0,
                  8.0,
                ),
                blurRadius: 24.0,
                spreadRadius: 0.0,
              ), //BoxShadow
            ],
            color: AppColors.blueLv4,
            shape: BoxShape.circle,
          ),
          child: AppIconButton(
            buttonColor: AppColors.transparent,
            icon: const Icon(
              Icons.send,
              color: AppColors.white,
            ),
            onTap: widget.onTapSendButton ?? () {},
          ),
        )
      ],
    );
  }
}
