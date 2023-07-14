import 'package:alvamind_library/app/theme/app_sizes.dart';
import 'package:alvamind_library/view/samples/sample_wrapper.dart';
import 'package:alvamind_library/widget/organism/order_list/order_list.dart';

import 'package:flutter/material.dart';

import '../../app/theme/app_colors.dart';
import '../../widget/organism/order_card/order_card.dart';

class OrderListSamplesView extends StatefulWidget {
  const OrderListSamplesView({Key? key}) : super(key: key);

  static const routeName = '/organism-order-list-samples';

  @override
  State<OrderListSamplesView> createState() => _OrderListSamplesViewState();
}

class _OrderListSamplesViewState extends State<OrderListSamplesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackLv9,
      appBar: AppBar(title: const Text('Order List')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(AppSizes.padding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            orderList(),
          ],
        ),
      ),
    );
  }

  Widget orderList() {
    return SampleWrapper(
      title: 'Order List',
      widget: OrderList(
        title: 'Alasan',
        dateTime: '12 : 30 PM',
        location: 'Tokyo, Jepang',
        orderCard: OrderCard(
          padding: EdgeInsets.all(0),
          backgroundColor: AppColors.transparent,
          starImageCount: '50',
          title: 'Barokah Laundry',
          isProgress: true,
          textPrice: 'Rp42.431',
          statusPrice: '/00 days',
          dateProgress: '2 Agustus 2023',
          textLeftButton: 'Detail Pesanan',
          textRightButton: 'Lacak Pengiriman',
          labelingCount: 40,
          functionLeftButton: () {
            // TODO
          },
          functionRightButton: () {
            // TODO
          },
        ),
      ),
    );
  }
}
