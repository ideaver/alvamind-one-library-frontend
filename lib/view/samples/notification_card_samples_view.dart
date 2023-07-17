import 'package:flutter/material.dart';

import '../../app/theme/app_sizes.dart';
import '../../widget/organism/notification_card/notification_card.dart';
import 'sample_wrapper.dart';

class NotificationCardSamplesView extends StatefulWidget {
  const NotificationCardSamplesView({Key? key}) : super(key: key);

  static const routeName = '/organism-notification-card-samples';

  @override
  State<NotificationCardSamplesView> createState() => _NotificationCardSamplesViewState();
}

class _NotificationCardSamplesViewState extends State<NotificationCardSamplesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Notification Card Samples')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(AppSizes.padding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            notificationCard(),
            notificationCardNew(),
          ],
        ),
      ),
    );
  }

  Widget notificationCard() {
    return const SampleWrapper(
      title: 'Notification Card',
      widget: NotificationCard(
        title: 'Pesanan Berhasil dibuat!',
        dateNotification: '20 Dec, 2022',
        timeNotification: '20:49 PM',
        textNotification: 'Selamat pesanan anda telah kami buat. anda bisa langsung mengceknya.',
      ),
    );
  }

  Widget notificationCardNew() {
    return const SampleWrapper(
      title: 'Notification Card New',
      widget: NotificationCard(
        isNew: true,
        title: 'Pesanan Berhasil dibuat!',
        dateNotification: '20 Dec, 2022',
        timeNotification: '20:49 PM',
        textNotification: 'Selamat pesanan anda telah kami buat. anda bisa langsung mengceknya.',
      ),
    );
  }
}
