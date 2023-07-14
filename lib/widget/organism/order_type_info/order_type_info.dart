import 'package:alvamind_library/app/asset/app_assets.dart';
import 'package:flutter/material.dart';

import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_sizes.dart';
import '../../../app/theme/app_text_style.dart';
import '../../molecule/app_icon_button.dart';

class OrderTypeInfo extends StatelessWidget {
  final String? countMachine;
  final String? countCustomers;
  final String? countEmployees;
  final bool? withOrder;
  final void Function()? deliveryButton;
  final void Function()? dropButton;
  final void Function()? selfButton;
  const OrderTypeInfo({
    super.key,
    this.countCustomers,
    this.countEmployees,
    this.countMachine,
    this.withOrder = true,
    this.deliveryButton,
    this.dropButton,
    this.selfButton,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        withOrder == true
            ? Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  appRightIcon(
                    Icons.fire_truck,
                    'Delivery',
                    deliveryButton ?? () {},
                  ),
                  appRightIcon(
                    Icons.add_box,
                    'Drop',
                    dropButton ?? () {},
                  ),
                  appRightIcon(
                    CustomIcon.scan_icon,
                    'Self Service',
                    selfButton ?? () {},
                  ),
                ],
              )
            : const SizedBox.shrink(),
        withOrder == true
            ? SizedBox(
                height: AppSizes.padding / 2,
              )
            : const SizedBox.shrink(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            detailInfo(countMachine ?? '', 'Mesin aktif'),
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 12,
              ),
              height: 18,
              width: 1,
              color: AppColors.blackLv4,
            ),
            detailInfo(countCustomers ?? '', 'Konsumen'),
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 12,
              ),
              height: 18,
              width: 1,
              color: AppColors.blackLv4,
            ),
            detailInfo(countEmployees ?? '', 'Karyawan'),
          ],
        ),
      ],
    );
  }

  Widget detailInfo(
    String title,
    String subtitle,
  ) {
    return Column(
      children: [
        Text(
          title,
          softWrap: true,
          maxLines: 3,
          overflow: TextOverflow.fade,
          textAlign: TextAlign.center,
          style: AppTextStyle.bold(size: 18),
        ),
        SizedBox(
          height: AppSizes.padding / 2,
        ),
        Row(
          children: [
            const Icon(
              Icons.circle,
              size: 10,
              color: AppColors.blackLv6,
            ),
            SizedBox(
              width: AppSizes.padding / 4,
            ),
            Text(
              subtitle,
              softWrap: true,
              maxLines: 3,
              overflow: TextOverflow.fade,
              textAlign: TextAlign.center,
              style: AppTextStyle.medium(
                size: 12,
                color: AppColors.blackLv4,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget appRightIcon(
    IconData icon,
    String text,
    void Function() functionButton,
  ) {
    return Row(
      children: [
        AppIconButton(
          icon: Icon(
            icon,
            color: AppColors.primary,
            size: 20,
          ),
          buttonColor: AppColors.blueLv5,
          width: 40,
          height: 40,
          onTap: functionButton,
        ),
        SizedBox(
          width: AppSizes.padding / 2,
        ),
        Text(
          text,
          softWrap: true,
          maxLines: 3,
          overflow: TextOverflow.fade,
          style: AppTextStyle.bold(
            size: 14,
          ),
        )
      ],
    );
  }
}
