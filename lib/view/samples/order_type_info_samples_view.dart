import 'package:flutter/material.dart';

import '../../app/theme/app_colors.dart';
import '../../app/theme/app_sizes.dart';
import '../../widget/organism/order_type_info/order_type_info.dart';
import 'sample_wrapper.dart';

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
            orderTypeInfo(),
          ],
        ),
      ),
    );
  }

  Widget orderTypeInfo() {
    return SampleWrapper(
      title: 'Order Type Info',
      widget: OrderTypeInfo(
        countMachine: '21/24',
        countCustomers: '3.145',
        countEmployees: '7',
        deliveryButton: () {
          // TODO
        },
        dropButton: () {
          // TODO
        },
        selfButton: () {
          // TODO
        },
      ),
    );
  }
}
