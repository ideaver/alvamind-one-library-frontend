import 'package:alvamind_library/app/theme/app_sizes.dart';
import 'package:alvamind_library/view/samples/sample_wrapper.dart';

import 'package:flutter/material.dart';

import '../../app/asset/app_assets.dart';
import '../../app/theme/app_colors.dart';
import '../../widget/organism/promo_card/promo_card.dart';

class PromoCardSamplesView extends StatefulWidget {
  const PromoCardSamplesView({Key? key}) : super(key: key);

  static const routeName = '/organism-promo-card-samples';

  @override
  State<PromoCardSamplesView> createState() => _PromoCardSamplesViewState();
}

class _PromoCardSamplesViewState extends State<PromoCardSamplesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackLv8,
      appBar: AppBar(title: const Text('Promo Card')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(AppSizes.padding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            promoCard(),
            promoCardEdit(),
            promoCardEditDown()
          ],
        ),
      ),
    );
  }

  Widget promoCard() {
    return SampleWrapper(
      title: 'Promo Card',
      widget: PromoCard(
        image: AppAssets.warning,
        title: 'Promo Spesial Hari ini\nUntuk Hari ini',
        datePromo: 'Berakhir 2 Hari lagi',
        subtitle: 'Dapatkan diskon hinggi 75% syarat &\nkententuan berlaku.',
        functionIconButton: () {
          // TODO
        },
      ),
    );
  }

  Widget promoCardEdit() {
    return SampleWrapper(
      title: 'Promo Card',
      widget: PromoCard(
        image: AppAssets.failed,
        title: 'Promo Spesial Hari ini\nUntuk Hari ini',
        datePromo: 'Berakhir 2 Hari lagi',
        subtitle: 'Dapatkan diskon hinggi 75% syarat &\nkententuan berlaku.',
        functionIconButton: () {
          // TODO
        },
      ),
    );
  }

  Widget promoCardEditDown() {
    return SampleWrapper(
      title: 'Promo Card',
      widget: PromoCard(
        image: AppAssets.success,
        title: 'Promo Spesial Hari ini\nUntuk Hari ini',
        datePromo: 'Berakhir 2 Hari lagi',
        subtitle: 'Dapatkan diskon hinggi 75% syarat & kententuan berlaku.',
        rightIcon: false,
        detailDatePromo: '25 Mei - 25 Mei 2023',
        countPromo: '123.123',
      ),
    );
  }
}
