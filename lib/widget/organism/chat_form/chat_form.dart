import 'package:flutter/material.dart';

import '../../../app/asset/app_assets.dart';
import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_sizes.dart';
import '../../molecule/app_icon_button.dart';
import '../../molecule/app_text_field.dart';

class ChatForm extends StatefulWidget {
  final TextEditingController? textController;
  final String? hintText;
  final void Function(String)? onChanged;
  final void Function()? onTapEmoticonButton;
  final void Function()? onTapAddButton;
  final void Function()? onTapImageButton;
  final void Function()? onTapSendButton;

  const ChatForm({
    super.key,
    this.textController,
    this.hintText,
    this.onTapAddButton,
    this.onTapImageButton,
    this.onTapEmoticonButton,
    this.onTapSendButton,
    this.onChanged,
  });

  @override
  State<ChatForm> createState() => _ChatFormState();
}

class _ChatFormState extends State<ChatForm> {
  bool showImageButton = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: AppColors.blackLv9,
            ),
            child: Row(
              children: [
                textField(),
                SizedBox(width: AppSizes.padding / 2),
                imageButton(),
              ],
            ),
          ),
        ),
        SizedBox(width: AppSizes.padding / 2),
        sendButton(),
      ],
    );
  }

  Widget textField() {
    return Expanded(
      child: Material(
        color: AppColors.transparent,
        child: AppTextField(
          controller: widget.textController,
          hintText: widget.hintText,
          textInputType: TextInputType.text,
          // suffixWidget: rightButton(),
          fillColor: AppColors.transparent,
          borderColor: AppColors.transparent,
          onFocusFillColor: AppColors.transparent,

          onChanged: (value) {
            if (widget.onChanged != null) {
              widget.onChanged!(value);
            }

            if (value.isEmpty) {
              showImageButton = true;
            } else {
              showImageButton = false;
            }
            setState(() {});
          },
        ),
      ),
    );
  }

  Widget imageButton() {
    return showImageButton
        ? AppIconButton(
            padding: const EdgeInsets.fromLTRB(14, 16, 16, 14),
            buttonColor: AppColors.transparent,
            icon: const Icon(
              Icons.image,
              color: AppColors.blackLv4,
            ),
            onTap: widget.onTapImageButton ?? () {},
          )
        : const SizedBox.shrink();
  }

  Widget sendButton() {
    return AppIconButton(
      padding: const EdgeInsets.fromLTRB(12, 14, 14, 12),
      gradient: const [
        AppColors.blueLv2,
        AppColors.blueLv1,
      ],
      icon: const Icon(
        CustomIcon.sendBoldIcon,
        color: AppColors.white,
      ),
      onTap: widget.onTapSendButton ?? () {},
    );
  }

  // Widget rightButton() {
  //   if (!showImageButton) {
  //     return const SizedBox.shrink();
  //   }

  //   return AppIconButton(
  //     buttonColor: AppColors.redLv1,
  //     padding: const EdgeInsets.only(top: 2),
  //     icon: const Icon(
  //       Icons.image,
  //       size: 18,
  //       color: AppColors.primary,
  //     ),
  //     onTap: widget.onTapImageButton ?? () {},
  //   );

  //   // return Row(
  //   //   mainAxisSize: MainAxisSize.min,
  //   //   children: [
  //   //     // AppIconButton(
  //   //     //   padding: const EdgeInsets.all(0),
  //   //     //   buttonColor: AppColors.transparent,
  //   //     //   icon: const Icon(
  //   //     //     Icons.add,
  //   //     //     size: 18,
  //   //     //     color: AppColors.primary,
  //   //     //   ),
  //   //     //   onTap: widget.onTapAddButton ?? () {},
  //   //     // ),
  //   //     // SizedBox(width: AppSizes.padding / 2),
  //   //     AppIconButton(
  //   //       buttonColor: AppColors.transparent,
  //   //       padding: const EdgeInsets.all(0),
  //   //       icon: const Icon(
  //   //         Icons.image,
  //   //         size: 18,
  //   //         color: AppColors.primary,
  //   //       ),
  //   //       onTap: widget.onTapCameraButton ?? () {},
  //   //     ),
  //   //   ],
  //   // );
  // }
}
