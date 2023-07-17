import 'package:flutter/material.dart';

import '../../app/theme/app_sizes.dart';
import '../../widget/organism/showcase_card/showcase_banner.dart';
import '../../widget/organism/showcase_card/showcase_credit_card.dart';
import '../../widget/organism/showcase_card/showcase_user_profile_card.dart';
import 'sample_wrapper.dart';

class ShowcaseCardSamplesView extends StatefulWidget {
  const ShowcaseCardSamplesView({Key? key}) : super(key: key);

  static const routeName = '/organism-showcase-card-samples';

  @override
  State<ShowcaseCardSamplesView> createState() => _ShowcaseCardSamplesViewState();
}

class _ShowcaseCardSamplesViewState extends State<ShowcaseCardSamplesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Showcase Card')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(AppSizes.padding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            creditCard(),
            bannerCard(),
            userProfileCard(),
            userProfileCardEmployee(),
            userProfileCardOnly(),
            userProfileCardWallet(),
          ],
        ),
      ),
    );
  }

  Widget creditCard() {
    return SampleWrapper(
      title: 'Credit Card',
      widget: UserCreditCard(
        numberCard: '1234 5678 9123 1211',
        nameCard: 'Situmorang',
        expiryDateCard: '10/23',
        functionEditButton: () {
          // TODO
        },
      ),
    );
  }

  Widget bannerCard() {
    return SampleWrapper(
      title: 'Banner card',
      widget: BannerCard(),
    );
  }

  Widget userProfileCard() {
    return SampleWrapper(
      title: 'User Profil Card',
      widget: UserProfileCard(
        nameUser: 'Amber Winston',
        idUser: 'ID Profil 5457383979',
        countBalance: 'Rp12.689.000',
        functionCopyButton: () {
          // TODO
        },
        functionHistoryButton: () {
          // TODO
        },
        functionTopUpButton: () {
          // TODO
        },
        functionWithDrawButton: () {
          // TODO
        },
        functionPayButton: () {
          // TODO
        },
      ),
    );
  }

  Widget userProfileCardEmployee() {
    return SampleWrapper(
      title: 'User Profil Card Employee',
      widget: UserProfileCard(
        onlyUser: true,
        onlyEmployee: true,
        nameUser: 'Amber Winston',
        idUser: 'ID Profil 5457383979',
        employeePlace: 'Barokah Laundry',
        employeeJob: 'Kasir, Produksi',
        functionCopyButton: () {
          // TODO
        },
        functionDetailButton: () {
          // TODO
        },
      ),
    );
  }

  Widget userProfileCardOnly() {
    return SampleWrapper(
      title: 'User Profil Card Only',
      widget: UserProfileCard(
        onlyUser: true,
        nameUser: 'Amber Winston',
        idUser: 'ID Profil 5457383979',
        functionCopyButton: () {
          // TODO
        },
      ),
    );
  }

  Widget userProfileCardWallet() {
    return SampleWrapper(
      title: 'User Profil Card Wallet',
      widget: UserProfileCard(
        onlyBalance: true,
        countBalance: 'Rp12.689.000',
        functionHistoryButton: () {
          // TODO
        },
        functionTopUpButton: () {
          // TODO
        },
        functionWithDrawButton: () {
          // TODO
        },
        functionPayButton: () {
          // TODO
        },
      ),
    );
  }
}
