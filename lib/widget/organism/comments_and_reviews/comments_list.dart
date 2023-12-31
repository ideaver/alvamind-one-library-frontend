import 'package:flutter/material.dart';

import '../../../app/asset/app_assets.dart';
import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_sizes.dart';
import '../../../app/theme/app_text_style.dart';
import '../../atom/app_avatar.dart';
import '../../atom/app_image.dart';
import '../../molecule/app_chips.dart';
import '../../molecule/app_icon_button.dart';

class CommentListCard extends StatelessWidget {
  final String titleUser;
  final String? subtitleUser;
  final String? countStaruser;
  final String? countLike;
  final bool showResponseButton;
  final bool isMyComment;
  final String? textComment;
  final String? dateComment;
  final bool showImage;
  final String? imageAvatar;
  final List<String>? images;
  final void Function()? onTapLikeButton;
  final void Function()? onTapResponseButton;
  final void Function()? onTapEditButton;
  final EdgeInsets? padding;

  const CommentListCard({
    super.key,
    required this.titleUser,
    this.showResponseButton = false,
    this.isMyComment = false,
    this.countStaruser,
    this.dateComment,
    this.onTapLikeButton,
    this.onTapResponseButton,
    this.onTapEditButton,
    this.images,
    this.showImage = false,
    this.subtitleUser,
    this.textComment,
    this.imageAvatar,
    this.countLike,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding ??
          const EdgeInsets.all(
            0,
          ),
      child: Column(
        children: [
          headerComment(),
          SizedBox(height: AppSizes.padding / 1.5),
          Column(
            children: [
              Text(
                textComment ?? '',
                style: AppTextStyle.regular(size: 14),
              ),
              SizedBox(height: AppSizes.padding / 1.5),
              showImage == true ? imageList() : const SizedBox.shrink(),
              showImage == true ? SizedBox(height: AppSizes.padding / 1.5) : const SizedBox.shrink(),
              buttonBottom(),
            ],
          )
        ],
      ),
    );
  }

  Widget imageList() {
    if (images == null || images!.isEmpty) {
      return const SizedBox.shrink();
    }

    return Row(
      children: [
        ...List.generate(images!.length, (i) {
          return Padding(
            padding: EdgeInsets.only(right: AppSizes.padding / 2),
            child: AppImage(
              image: 'https://picsum.photos/id/2$i/200/200',
              width: 70,
              height: 70,
              borderRadius: 24,
              backgroundColor: AppColors.redLv5,
            ),
          );
        }),
      ],
    );
  }

  Widget buttonBottom() {
    return Row(
      children: [
        Row(
          children: [
            AppIconButton(
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
              icon: const Icon(
                CustomIcon.heartIcon,
                color: AppColors.primary,
              ),
              buttonColor: Colors.transparent,
              onTap: onTapLikeButton ?? () {},
            ),
            SizedBox(width: AppSizes.padding / 2),
            Text(
              countLike ?? '',
              style: AppTextStyle.regular(size: 12),
            )
          ],
        ),
        SizedBox(width: AppSizes.padding),
        showResponseButton
            ? Row(
                children: [
                  AppIconButton(
                    padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                    icon: const Icon(
                      CustomIcon.sendIcon,
                      color: AppColors.primary,
                    ),
                    buttonColor: Colors.transparent,
                    onTap: onTapResponseButton ?? () {},
                  ),
                  SizedBox(width: AppSizes.padding / 2),
                  Text(
                    'Respon',
                    style: AppTextStyle.regular(size: 12),
                  )
                ],
              )
            : const SizedBox.shrink(),
        showResponseButton ? SizedBox(width: AppSizes.padding) : const SizedBox.shrink(),
        Text(
          dateComment ?? '',
          style: AppTextStyle.regular(
            size: 12,
            color: AppColors.blackLv5,
          ),
        ),
      ],
    );
  }

  Widget headerComment() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            AppAvatar(
              image: imageAvatar ?? randomImage,
              size: 40,
            ),
            SizedBox(width: AppSizes.padding / 2),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  titleUser,
                  style: AppTextStyle.bold(size: 18),
                ),
                Text(
                  subtitleUser ?? '',
                  style: AppTextStyle.regular(
                    size: 12,
                    color: AppColors.blackLv6,
                  ),
                ),
              ],
            ),
            //
          ],
        ),
        Row(
          children: [
            AppChips(
              onTap: () {},
              isSelected: false,
              text: countStaruser ?? '',
              fontSize: 12,
              padding: EdgeInsets.symmetric(
                horizontal: AppSizes.padding / 2,
                vertical: AppSizes.padding / 4,
              ),
              borderWidth: 1.5,
              leftIcon: Icons.star,
              selectedColor: AppColors.primary,
            ),
            SizedBox(width: AppSizes.padding / 2),
            isMyComment
                ? AppIconButton(
                    icon: const Icon(
                      size: 20,
                      CustomIcon.editIcon,
                    ),
                    onTap: onTapEditButton ?? () {},
                    padding: const EdgeInsets.all(2),
                    buttonColor: AppColors.transparent,
                  )
                : const SizedBox.shrink(),
          ],
        )
      ],
    );
  }
}
