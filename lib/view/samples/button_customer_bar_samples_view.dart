import 'package:alvamind_library/app/asset/app_assets.dart';
import 'package:alvamind_library/app/theme/app_colors.dart';
import 'package:alvamind_library/app/theme/app_sizes.dart';
import 'package:alvamind_library/view/samples/sample_wrapper.dart';

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
        gapLeftOut: SizedBox(width: AppSizes.padding / 2),
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
        iconLeftIn: Icons.document_scanner,
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
        padding: EdgeInsets.symmetric(vertical: AppSizes.padding / 1.5),
        gapLeftOut: SizedBox(width: AppSizes.padding * 1.2),
        gapLeftIn: SizedBox(width: AppSizes.padding * 1.5),
        gapRightIn: SizedBox(width: AppSizes.padding),
        gapRightOut: SizedBox(width: AppSizes.padding / 3),
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
        iconLeftIn: Icons.document_scanner,
        textLeftIn: 'Outlet',
        functionButtonLeftIn: () {
          // TODO
          setState(() {
            _index = 1;
          });
        },
        //
        iconCenter: CustomIcon.scan_icon,
        textCenter: 'Akutansi',
        paddingTextCenter: EdgeInsets.all(0),
        // textCenterColor: AppColors.blackLv6,
        iconCenterBackgroundColor: Colors.white,
        functionButtonCenter: () {
          // TODO

          setState(() {
            _index = 2;
          });
        },
        //
        iconRightIn: Icons.group,
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
        gapLeftOut: SizedBox(width: AppSizes.padding / 2),
        gapLeftIn: SizedBox(width: AppSizes.padding / 2),

        gapRightIn: SizedBox(width: AppSizes.padding / 2),
        gapRightOut: SizedBox(width: AppSizes.padding / 2),
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
        iconLeftIn: Icons.document_scanner,
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
        gapLeftOut: SizedBox(width: AppSizes.padding / 2),
        gapLeftIn: SizedBox(width: AppSizes.padding / 4),

        gapRightIn: SizedBox(width: AppSizes.padding),
        gapRightOut: SizedBox(width: AppSizes.padding),
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
        iconLeftIn: Icons.document_scanner,
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
