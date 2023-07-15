import 'package:flutter/material.dart';

import '../../app/asset/app_assets.dart';
import '../../app/theme/app_colors.dart';
import '../../app/theme/app_sizes.dart';
import '../../widget/organism/button_bar_customer/button_bar_customer .dart';
import 'sample_wrapper.dart';

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
            buttonBarCustomerList2(),
            buttonBarCustomerList3(),
            buttonBarCustomerList4(),
          ],
        ),
      ),
    );
  }

  int? _index = 5;
  Widget buttonBarCustomerList1() {
    return SampleWrapper(
      title: 'Button Bar list 1',
      widget: ButtonBarCustomer(
        index: _index,

        //
        iconLeftOut: CustomIcon.home_icon,
        textLeftOut: 'Beranda',
        functionButtonLeftOut: () {
          // TODO
          setState(() {
            _index = 0;
          });
        },
        //
        iconLeftIn: CustomIcon.document_icon,
        textLeftIn: 'Order',
        functionButtonLeftIn: () {
          // TODO
          setState(() {
            _index = 1;
          });
        },
        //
        iconCenter: CustomIcon.scan_icon,
        textCenter: 'Scan',
        iconCenterColor: AppColors.white,
        textCenterColor: AppColors.white,
        iconCenterBackgroundColor: AppColors.primary,
        functionButtonCenter: () {
          // TODO
        },
        //
        iconRightIn: CustomIcon.chat_icon,
        textRightIn: 'Chat',
        functionButtonRightIn: () {
          // TODO
          setState(() {
            _index = 3;
          });
        },
        //
        iconRightOut: Icons.settings,
        textRightOut: 'Pengaturan',
        functionButtonRightOut: () {
          // TODO
          setState(() {
            _index = 4;
          });
        },
        //
      ),
    );
  }

  Widget buttonBarCustomerList2() {
    return SampleWrapper(
      title: 'Button Bar list 2',
      widget: ButtonBarCustomer(
        index: _index,

        //
        iconLeftOut: CustomIcon.home_icon,
        textLeftOut: 'Beranda',
        functionButtonLeftOut: () {
          // TODO
          setState(() {
            _index = 0;
          });
        },
        //
        iconLeftIn: CustomIcon.building_icon,
        textLeftIn: 'Outlet',
        functionButtonLeftIn: () {
          // TODO
          setState(() {
            _index = 1;
          });
        },
        //
        iconCenter: CustomIcon.wallet_icon,
        textCenter: 'Akutansi',

        // textCenterColor: AppColors.blackLv6,
        iconCenterBackgroundColor: Colors.white,
        functionButtonCenter: () {
          // TODO

          setState(() {
            _index = 2;
          });
        },
        //
        iconRightIn: CustomIcon.three_user_icon,
        textRightIn: 'Karyawan',
        functionButtonRightIn: () {
          // TODO
          setState(() {
            _index = 3;
          });
        },
        //
        iconRightOut: Icons.settings,
        textRightOut: 'Pengaturan',
        functionButtonRightOut: () {
          // TODO
          setState(() {
            _index = 4;
          });
        },
        //
      ),
    );
  }

  Widget buttonBarCustomerList3() {
    return SampleWrapper(
      title: 'Button Bar list 3',
      widget: ButtonBarCustomer(
        index: _index,

        //
        iconLeftOut: CustomIcon.home_icon,
        textLeftOut: 'Beranda',
        functionButtonLeftOut: () {
          // TODO
          setState(() {
            _index = 0;
          });
        },
        //
        iconLeftIn: CustomIcon.document_icon,
        textLeftIn: 'Produksi',
        functionButtonLeftIn: () {
          // TODO
          setState(() {
            _index = 1;
          });
        },
        //
        iconCenter: CustomIcon.scan_icon,
        textCenter: 'Scan',
        iconCenterColor: AppColors.white,
        textCenterColor: AppColors.white,
        iconCenterBackgroundColor: AppColors.primary,
        functionButtonCenter: () {
          // TODO
        },
        //
        iconRightIn: CustomIcon.chat_icon,
        textRightIn: 'Inbox',
        functionButtonRightIn: () {
          // TODO
          setState(() {
            _index = 3;
          });
        },
        //
        iconRightOut: Icons.settings,
        textRightOut: 'Pengaturan',
        functionButtonRightOut: () {
          // TODO
          setState(() {
            _index = 4;
          });
        },
        //
      ),
    );
  }

  Widget buttonBarCustomerList4() {
    return SampleWrapper(
      title: 'Button Bar list 4',
      widget: ButtonBarCustomer(
        index: _index,

        //
        iconLeftOut: CustomIcon.home_icon,
        textLeftOut: 'Beranda',
        functionButtonLeftOut: () {
          // TODO
          setState(() {
            _index = 0;
          });
        },
        //
        iconLeftIn: CustomIcon.convert_3d_cube_icon,
        textLeftIn: 'Antar Jemput',
        functionButtonLeftIn: () {
          // TODO
          setState(() {
            _index = 1;
          });
        },
        //
        iconCenter: CustomIcon.scan_icon,
        textCenter: 'Scan',
        iconCenterColor: AppColors.white,
        textCenterColor: AppColors.white,
        iconCenterBackgroundColor: AppColors.primary,
        functionButtonCenter: () {
          // TODO
        },
        //
        iconRightIn: CustomIcon.chat_icon,
        textRightIn: 'Inbox',
        functionButtonRightIn: () {
          // TODO
          setState(() {
            _index = 3;
          });
        },
        //
        iconRightOut: Icons.settings,
        textRightOut: 'Pengaturan',
        functionButtonRightOut: () {
          // TODO
          setState(() {
            _index = 4;
          });
        },
        //
      ),
    );
  }
}
