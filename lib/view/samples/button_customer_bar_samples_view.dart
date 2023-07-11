import 'package:alvamind_library/app/theme/app_colors.dart';
import 'package:alvamind_library/app/theme/app_sizes.dart';

import 'package:flutter/material.dart';

import '../../widget/organism/button_bar_customer/button_bar_customer .dart';

class ButtonBarCustomerSamplesView extends StatefulWidget {
  const ButtonBarCustomerSamplesView({Key? key}) : super(key: key);

  static const routeName = '/organism-buttonbar-customer-samples';

  @override
  State<ButtonBarCustomerSamplesView> createState() => _ButtonBarCustomerSamplesViewState();
}

class _ButtonBarCustomerSamplesViewState extends State<ButtonBarCustomerSamplesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackLv9,
      appBar: AppBar(title: const Text('Button Bar Customer Samples')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(AppSizes.padding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buttonBarCustomerList1(),
          ],
        ),
      ),
    );
  }

  Widget buttonBarCustomerList1() {
    return ButtonBarCustomer(
      iconLeftOut: Icons.home,
      textLeftOut: 'Beranda',
      functionButtonLeftOut: () {
        // TODO
      },
      //
      iconLeftIn: Icons.home,
      textLeftIn: 'Beranda',
      functionButtonLeftIn: () {
        // TODO
      },
      //
      iconCenter: Icons.home,
      textCenter: 'Beranda',
      iconCenterColor: AppColors.white,
      textCenterColor: AppColors.white,
      iconCenterBackgroundColor: AppColors.primary,
      functionButtonCenter: () {
        // TODO
      },
      //
      iconRightIn: Icons.home,
      textRightIn: 'Beranda',
      functionButtonRightIn: () {
        // TODO
      },
      //
      iconRightOut: Icons.home,
      textRightOut: 'Beranda',
      functionButtonRightOut: () {
        // TODO
      },
      //
    );
  }
}
