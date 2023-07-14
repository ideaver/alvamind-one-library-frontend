import 'package:alvamind_library/app/asset/app_assets.dart';
import 'package:alvamind_library/app/theme/app_sizes.dart';
import 'package:alvamind_library/widget/molecule/app_button.dart';

import 'package:flutter/material.dart';

import '../../app/theme/app_colors.dart';
import '../../app/theme/app_text_style.dart';
import '../../widget/molecule/account_list.dart';
import '../../widget/molecule/app_card_container.dart';
import '../../widget/molecule/app_text_field.dart';

class CardPinPoinDeliverySamplesView extends StatefulWidget {
  const CardPinPoinDeliverySamplesView({Key? key}) : super(key: key);

  static const routeName = '/organism-card-pinpoin-delivery-samples';

  @override
  State<CardPinPoinDeliverySamplesView> createState() => _CardPinPoinDeliverySamplesViewState();
}

class _CardPinPoinDeliverySamplesViewState extends State<CardPinPoinDeliverySamplesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackLv9,
      appBar: AppBar(title: const Text('Card PinPoin & Delivery')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(AppSizes.padding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                AppCardContainer(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    widgetAddress('Lokasi anda ( dalam 10 km )', 'Margahayu, Bandung'),
                    AppButton(
                      padding: EdgeInsets.symmetric(
                        horizontal: AppSizes.padding / 1.5,
                        vertical: AppSizes.padding / 2,
                      ),
                      fontSize: 14,
                      leftIcon: CustomIcon.edit_pen_icon,
                      text: 'Ubah',
                      onTap: () {},
                    )
                  ],
                )),
                SizedBox(height: AppSizes.padding),
                AppCardContainer(
                  child: Column(
                    children: [
                      widgetAddress('Lokasi anda ( dalam 10 km )', 'Margahayu, Bandung'),
                      SizedBox(height: AppSizes.padding),
                      AppTextField(
                        hintText: 'Cari Alamat...',
                        prefixIcon: Icons.search,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: AppSizes.padding),
                Column(
                  children: [
                    textBetween('Alamat Pengiriman', 'Estimasi Waktu')
                  ],
                ),
                SizedBox(height: AppSizes.padding),
                AccountList(
                  title: 'Joole D Kurir',
                  subtitle: 'ID #12345098',
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  // Widget orderList() {
  //   return SampleWrapper(
  //     title: 'Order List',
  //     widget:
  //   );
  // }

  Widget widgetAddress(String titleAddress, String subtitleAddress) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const Icon(
              Icons.location_pin,
              size: 14,
              color: AppColors.primary,
            ),
            SizedBox(
              width: AppSizes.padding / 2,
            ),
            Text(
              titleAddress,
              style: AppTextStyle.regular(
                size: 14,
              ),
            ),
          ],
        ),
        SizedBox(
          height: AppSizes.padding / 4,
        ),
        Text(
          subtitleAddress,
          style: AppTextStyle.bold(
            size: 16,
          ),
        ),
      ],
    );
  }

  Widget textBetween(
    String leftText,
    String rightText,
  ) {
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
