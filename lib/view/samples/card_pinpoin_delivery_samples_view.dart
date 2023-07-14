import 'package:alvamind_library/app/theme/app_sizes.dart';
import 'package:alvamind_library/view/samples/sample_wrapper.dart';
import 'package:alvamind_library/widget/organism/card_pinpoin_delivery/address_content.dart';
import 'package:alvamind_library/widget/organism/card_pinpoin_delivery/courier_content.dart';
import 'package:flutter/material.dart';
import '../../app/theme/app_colors.dart';
import '../../widget/organism/card_pinpoin_delivery/card_pinpoin_delivery.dart';
import '../../widget/organism/order_card/order_card.dart';
import '../../widget/organism/order_list/order_list.dart';

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
      backgroundColor: AppColors.white,
      appBar: AppBar(title: const Text('Card PinPoin & Delivery')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(AppSizes.padding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            cardPinPoinDelivery(),
          ],
        ),
      ),
    );
  }

  Widget cardPinPoinDelivery() {
    return SampleWrapper(
      title: 'Card PinPoin & Delivery',
      widget: CardPinPoinDelivery(
        countLocationUser: 'lokasi anda ( dalam 10 km )',
        locationUser: 'Margahayu. Bandung',
        functionEditButton: () {
          // TODO
        },
        onChanged: () {
          // TODO
        },
        //
        //
        deliverAddress: const AddressContent(
          deliveryAddress: 'Zabiniec 12/222, 31-215\nCracow, Poland',
          deliveryTime: 'Hari ini, 21 Juni 2023',
        ),
        //
        //
        courierDetail: CourierContent(
          deliveryAddress: const AddressContent(
            deliveryAddress: 'Zabiniec 12/222, 31-215\nCracow, Poland',
            deliveryTime: 'Hari ini, 21 Juni 2023',
          ),
          functionCallButton: () {
            // TODO
          },
          functionChatButton: () {
            // TODO
          },
          idCourier: 'Joole D Kurir',
          nameCourier: 'ID #1234567',
        ),
        //
        //
        orderList: OrderList(
          title: 'Alasan',
          dateTime: '12 : 30 PM',
          location: 'Tokyo, Jepang',
          boxShadow: const [
            BoxShadow(
              color: AppColors.blackLv7,
              offset: Offset(0, 4),
              blurRadius: 60,
              spreadRadius: 0,
            ),
          ],
          //
          //
          orderCard: OrderCard(
            padding: EdgeInsets.all(0),
            backgroundColor: AppColors.white,
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
      ),
    );
  }
}
