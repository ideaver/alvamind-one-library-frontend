import 'package:flutter/material.dart';

import '../../../app/asset/app_assets.dart';
import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_sizes.dart';
import '../../../app/theme/app_text_style.dart';
import '../../atom/app_image.dart';
import '../../molecule/app_button.dart';
import '../../molecule/app_card_container.dart';
import '../../molecule/app_icon_button.dart';

class UserProfileCard extends StatelessWidget {
  final String? nameUser;
  final String? idUser;
  final String? countBalance;
  final String? employeePlace;
  final String? employeeJob;

  final bool? onlyEmployee;
  final bool? onlyBalance;
  final bool? onlyUser;

  final void Function()? functionCopyButton;
  final void Function()? functionHistoryButton;
  final void Function()? functionTopUpButton;
  final void Function()? functionWithDrawButton;
  final void Function()? functionPayButton;
  final void Function()? functionDetailButton;

  const UserProfileCard({
    super.key,
    this.countBalance,
    this.functionCopyButton,
    this.functionHistoryButton,
    this.functionPayButton,
    this.functionTopUpButton,
    this.functionWithDrawButton,
    this.functionDetailButton,
    this.idUser,
    this.nameUser,
    this.employeeJob,
    this.employeePlace,
    this.onlyBalance = false,
    this.onlyEmployee = false,
    this.onlyUser = false,
  });

  @override
  Widget build(BuildContext context) {
    return AppCardContainer(
        padding: EdgeInsets.all(AppSizes.padding * 2),
        borderRadius: BorderRadius.circular(40),
        backgroundColor: AppColors.blueLv1,
        gradient: const LinearGradient(colors: [
          AppColors.blueLv2,
          AppColors.blueLv1,
        ]),
        child: Stack(
          children: [
            content(),
          ],
        ));
  }

  Widget content() {
    return Column(
      children: [
        onlyBalance == true ? const SizedBox.shrink() : userContent(),
        //
        onlyBalance == true || onlyUser == true ? const SizedBox.shrink() : SizedBox(height: AppSizes.padding),
        onlyUser == true ? const SizedBox.shrink() : balanceContent(),
        //
        onlyEmployee == false ? const SizedBox.shrink() : SizedBox(height: AppSizes.padding),
        onlyEmployee == false ? const SizedBox.shrink() : employeeContent(),
      ],
    );
  }

  Widget userContent() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  nameUser ?? '',
                  style: AppTextStyle.bold(
                    size: 20,
                    color: Colors.white,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      idUser ?? '',
                      style: AppTextStyle.medium(
                        size: 14,
                        color: Colors.white,
                      ),
                    ),
                    AppIconButton(
                        icon: const Icon(
                          Icons.copy_outlined,
                          size: 16,
                          color: Colors.white,
                        ),
                        buttonColor: AppColors.transparent,
                        onTap: functionCopyButton ?? () {})
                  ],
                ),
              ],
            ),
            const CircleAvatar(
              backgroundImage: AssetImage(randomImage),
              maxRadius: 25,
            )
          ],
        ),
      ],
    );
  }

  Widget balanceContent() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Saldo Platform Wallet Anda',
                  softWrap: true,
                  maxLines: 2,
                  overflow: TextOverflow.fade,
                  style: AppTextStyle.medium(
                    size: 14,
                    color: Colors.white,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      countBalance ?? '',
                      softWrap: true,
                      maxLines: 2,
                      overflow: TextOverflow.fade,
                      style: AppTextStyle.bold(
                        size: 32,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            AppButton(
              text: 'Riwayat',
              fontSize: 10,
              borderColor: Colors.white,
              borderWidth: 1,
              padding: EdgeInsets.symmetric(horizontal: AppSizes.padding / 1.5, vertical: AppSizes.padding / 3),
              onTap: functionHistoryButton ?? () {},
            )
          ],
        ),
        SizedBox(
          height: AppSizes.padding,
        ),
        AppCardContainer(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              AppIconButton(
                icon: const Icon(
                  Icons.add_box,
                  color: AppColors.primary,
                ),
                onTap: functionTopUpButton ?? () {},
                buttonColor: AppColors.blueLv4,
                textStyle: AppTextStyle.bold(size: 14, color: AppColors.primary),
                text: 'Top Up',
              ),
              AppIconButton(
                icon: const Icon(
                  Icons.local_play_rounded,
                  color: AppColors.primary,
                ),
                onTap: functionWithDrawButton ?? () {},
                buttonColor: AppColors.blueLv4,
                text: 'Withdrawal',
                textStyle: AppTextStyle.bold(size: 14, color: AppColors.primary),
              ),
              AppIconButton(
                icon: const Icon(
                  CustomIcon.scan_icon,
                  color: AppColors.primary,
                ),
                onTap: functionPayButton ?? () {},
                textStyle: AppTextStyle.bold(size: 14, color: AppColors.primary),
                buttonColor: AppColors.blueLv4,
                text: 'Bayar',
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget employeeContent() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              employeePlace ?? '',
              softWrap: true,
              maxLines: 2,
              overflow: TextOverflow.fade,
              style: AppTextStyle.medium(
                size: 14,
                color: Colors.white,
              ),
            ),
            Row(
              children: [
                Text(
                  employeeJob ?? '',
                  softWrap: true,
                  maxLines: 2,
                  overflow: TextOverflow.fade,
                  style: AppTextStyle.bold(
                    size: 18,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
        AppButton(
          text: 'Detail',
          fontSize: 10,
          borderColor: Colors.white,
          borderWidth: 1,
          padding: EdgeInsets.symmetric(horizontal: AppSizes.padding / 1.5, vertical: AppSizes.padding / 3),
          onTap: functionDetailButton ?? () {},
        )
      ],
    );
  }
}