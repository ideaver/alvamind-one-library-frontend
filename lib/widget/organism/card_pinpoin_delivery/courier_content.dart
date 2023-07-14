import 'package:flutter/material.dart';

import '../../../app/theme/app_sizes.dart';
import '../../atom/app_image.dart';
import '../../molecule/account_list.dart';

class CourierContent extends StatelessWidget {
  final String nameCourier;
  final String idCourier;
  final Widget deliveryAddress;
  final void Function() functionChatButton;
  final void Function() functionCallButton;

  const CourierContent({
    super.key,
    required this.functionCallButton,
    required this.functionChatButton,
    required this.idCourier,
    required this.nameCourier,
    required this.deliveryAddress,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        deliveryAddress,
        SizedBox(height: AppSizes.padding),
        AccountList(
          title: 'Joole D Kurir',
          subtitle: 'ID #12345098',
          image: randomImage,
          functionCallButton: functionCallButton,
          functionChatButton: functionChatButton,
        ),
      ],
    );
  }
}
