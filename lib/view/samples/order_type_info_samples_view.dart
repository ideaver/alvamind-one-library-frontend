import 'package:flutter/material.dart';

import '../../app/theme/app_colors.dart';
import '../../app/theme/app_sizes.dart';
import '../../app/theme/app_text_style.dart';
import '../../widget/molecule/app_icon_button.dart';

class OrderTypeInfoSamplesView extends StatefulWidget {
  const OrderTypeInfoSamplesView({Key? key}) : super(key: key);

  static const routeName = '/organism-order-type-info-samples';

  @override
  State<OrderTypeInfoSamplesView> createState() => _OrderTypeInfoSamplesViewState();
}

class _OrderTypeInfoSamplesViewState extends State<OrderTypeInfoSamplesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackLv9,
      appBar: AppBar(title: const Text('Order Type Info')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(AppSizes.padding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                appRightIcon(Icons.fire_truck, 'Delivery'),
                appRightIcon(Icons.fire_truck, 'Drop'),
                appRightIcon(Icons.fire_truck, 'Self Service'),
              ],
            ),
            // Column(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   crossAxisAlignment: CrossAxisAlignment.center,
            //   children: [
            //     Text(
            //       countPromo ?? '',
            //       textAlign: TextAlign.center,
            //       style: AppTextStyle.bold(size: 18),
            //     ),
            //     SizedBox(
            //       height: AppSizes.padding / 2,
            //     ),
            //     Text(
            //       'Pengguna Promo',
            //       textAlign: TextAlign.center,
            //       style: AppTextStyle.medium(
            //         size: 12,
            //         color: AppColors.blackLv4,
            //       ),
            //     ),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }

  Widget appRightIcon(IconData icon, String text) {
    return Row(
      children: [
        AppIconButton(
            icon: Icon(
              icon,
              color: AppColors.primary,
            ),
            buttonColor: AppColors.blueLv5,
            onTap: () {}),
        SizedBox(
          width: AppSizes.padding / 4,
        ),
        Text(
          text,
          style: AppTextStyle.bold(
            size: 14,
          ),
        )
      ],
    );
  }
}
