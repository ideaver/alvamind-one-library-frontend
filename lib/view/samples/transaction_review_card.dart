import 'package:alvamind_library/app/asset/app_assets.dart';

import 'package:alvamind_library/view/samples/sample_wrapper.dart';

import 'package:alvamind_library/widget/organism/transaction_review_card/list_card_flowup.dart';
import 'package:flutter/material.dart';

import '../../app/theme/app_sizes.dart';

import '../../widget/organism/transaction_review_card/card_review.dart';
import '../../widget/organism/transaction_review_card/list_card_progress.dart';
import '../../widget/organism/transaction_review_card/list_transaction.dart';

class TransaksiReviewCardSamplesView extends StatefulWidget {
  const TransaksiReviewCardSamplesView({Key? key}) : super(key: key);

  static const routeName = '/organism-transaksi-review-card-samples';

  @override
  State<TransaksiReviewCardSamplesView> createState() => _TransaksiReviewCardSamplesViewState();
}

class _TransaksiReviewCardSamplesViewState extends State<TransaksiReviewCardSamplesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Transaksi & Review Card')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(AppSizes.padding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            listCardProgress(),
            listCardFlow(),
            listTransaction(),
            cardReview(),
          ],
        ),
      ),
    );
  }

  Widget listCardProgress() {
    return SampleWrapper(
      title: 'List Card Progress',
      widget: ListCard(
        leftIcon: CustomIcon.wallet_icon,
        rightIcon: Icons.chevron_right_rounded,
        title: 'Selasa, 23 Juni 2023',
        subtitle: 'Status Complain',
        textTags: 'Proses',
        functionLeftIcon: () {
          // TODO
        },
      ),
    );
  }

  Widget listCardFlow() {
    return const SampleWrapper(
      title: 'List Card Flow',
      widget: ListCardFlow(
        leftIcon: CustomIcon.wallet_icon,
        leftTitle: 'Inflow',
        title: 'Rp 10.123.567',
        subtitle: '+10% Naik dari bulan lalu',
        textTags: 'Proses',
      ),
    );
  }

  Widget listTransaction() {
    return const SampleWrapper(
      title: 'List Transaction',
      widget: ListTransaction(),
    );
  }

  Widget cardReview() {
    return SampleWrapper(
      title: 'Card Review',
      widget: CardReview(
        numberStar: 4,
        countStar: '4.6',
        countReview: '120',
      ),
    );
  }
}
