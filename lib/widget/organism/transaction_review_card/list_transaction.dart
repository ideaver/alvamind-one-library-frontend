import 'package:flutter/material.dart';

import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_sizes.dart';
import '../../atom/app_divider.dart';
import '../../molecule/app_card_container.dart';
import '../../molecule/app_transaction_info.dart';

class ListTransaction extends StatelessWidget {
  const ListTransaction({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppCardContainer(
      backgroundColor: AppColors.white,
      boxShadow: const [
        BoxShadow(
          color: AppColors.blackLv7,
          offset: Offset(0, 4),
          blurRadius: 60,
          spreadRadius: 0,
        ),
      ],
      child: Column(
        children: [
          const AppTransactionInfo(
            dotChillPadding: EdgeInsets.all(0),
            dotColor: AppColors.transparent,
            transactionId: '18239873123',
            transactionStatus: 'Paid',
            onlyTrasactionId: true,
          ),
          const AppTransactionInfo(
            dotChillPadding: EdgeInsets.all(0),
            dotColor: AppColors.transparent,
            transactionId: '18239873123',
            transactionStatus: 'Paid',
            onlyTrasactionId: true,
          ),
          const AppTransactionInfo(
            dotChillPadding: EdgeInsets.all(0),
            dotColor: AppColors.transparent,
            transactionId: '18239873123',
            transactionStatus: 'Paid',
            onlyTrasactionId: true,
          ),
          const AppDivider(
            color: AppColors.blackLv6,
          ),
          const AppTransactionInfo(
            dotChillPadding: EdgeInsets.all(0),
            dotColor: AppColors.transparent,
            transactionId: '18239873123',
            transactionStatus: 'Paid',
          ),
          SizedBox(
            height: AppSizes.padding,
          ),
          const AppTransactionInfo(
            dotChillPadding: EdgeInsets.all(0),
            dotColor: AppColors.transparent,
            transactionId: '18239873123',
            transactionStatus: 'Paid',
          ),
        ],
      ),
    );
  }
}
