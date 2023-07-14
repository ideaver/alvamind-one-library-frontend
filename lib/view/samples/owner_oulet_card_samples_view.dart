import 'package:flutter/material.dart';

import '../../app/theme/app_colors.dart';
import '../../app/theme/app_sizes.dart';
import '../../widget/organism/owner_outlet_card/owner_oultet_card.dart';
import 'sample_wrapper.dart';

class OwnerOutletCardSamplesView extends StatefulWidget {
  const OwnerOutletCardSamplesView({Key? key}) : super(key: key);

  static const routeName = '/organism-owner-outlet-card-samples';

  @override
  State<OwnerOutletCardSamplesView> createState() => _OwnerOutletCardSamplesViewState();
}

class _OwnerOutletCardSamplesViewState extends State<OwnerOutletCardSamplesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackLv9,
      appBar: AppBar(title: const Text('Owner Oultet Card')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(AppSizes.padding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ownerOutletCard(),
          ],
        ),
      ),
    );
  }

  Widget ownerOutletCard() {
    return SampleWrapper(
      title: 'Owner Outlet Card',
      widget: OwnerOutletCard(
        title: 'Cuci Kering',
        starImageCount: '4.8',
        isSelected: true,
        morePayment: 'Rp2.500',
        shuttlePayment: 'Free',
        textButton: 'Dipilih',
        functionButton: () {
          // TODO
        },
      ),
    );
  }
}
