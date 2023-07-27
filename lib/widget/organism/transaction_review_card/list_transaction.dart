import 'package:flutter/material.dart';

import '../../../app/theme/app_colors.dart';
import '../../atom/app_divider.dart';
import '../../molecule/app_card_container.dart';
import '../../molecule/app_transaction_info.dart';

class ListTransaction extends StatelessWidget {
  final String? email;
  final String? number;
  final String? gender;
  final String? registerDate;
  final String? transactionId;
  final String? adminPayment;
  final String? bill;
  final String? count;
  final String? status;
  final Color? statusColor;
  final bool? isTransaction;
  final List<BoxShadow>? boxShadow;
  final void Function()? onTapCopyNumber;
  final void Function()? onTapCopyEmail;
  final void Function()? onTapCopyTransactionId;
  final void Function()? onTapCopyCount;

  const ListTransaction({
    super.key,
    this.email,
    this.number,
    this.registerDate,
    this.status,
    this.gender,
    this.statusColor,
    this.adminPayment,
    this.bill,
    this.count,
    this.isTransaction = false,
    this.transactionId,
    this.onTapCopyCount,
    this.onTapCopyEmail,
    this.onTapCopyNumber,
    this.onTapCopyTransactionId,
    this.boxShadow,
  });

  @override
  Widget build(BuildContext context) {
    return AppCardContainer(
        backgroundColor: AppColors.white,
        boxShadow: boxShadow ??
            const [
              BoxShadow(
                color: AppColors.blackLv7,
                offset: Offset(0, 4),
                blurRadius: 60,
                spreadRadius: -40,
              ),
            ],
        child: isTransaction == true ? transaction() : userDetail());
  }

  userDetail() {
    return Column(
      children: [
        AppTransactionInfo(
          dotChillPadding: EdgeInsets.all(0),
          dotColor: AppColors.transparent,
          textTitle: 'Email',
          transactionId: email ?? '',
          transactionStatus: 'Paid',
          onlyTrasactionId: true,
          onTapCopyButton: onTapCopyEmail ?? () {},
        ),
        AppTransactionInfo(
          dotChillPadding: EdgeInsets.all(0),
          dotColor: AppColors.transparent,
          textTitle: 'Whatsapp',
          transactionId: number ?? '',
          transactionStatus: 'Paid',
          onlyTrasactionId: true,
          onTapCopyButton: onTapCopyNumber ?? () {},
        ),
        AppTransactionInfo(
          dotChillPadding: EdgeInsets.all(0),
          dotColor: AppColors.transparent,
          textTitle: 'Gender',
          transactionId: gender ?? '',
          transactionStatus: 'Paid',
          withIcon: false,
          onlyTrasactionId: true,
        ),
        const AppDivider(
          color: AppColors.blackLv7,
        ),
        AppTransactionInfo(
          dotChillPadding: EdgeInsets.all(0),
          dotColor: AppColors.transparent,
          textTitle: 'Terdaftar',
          transactionId: registerDate ?? '',
          transactionStatus: status ?? '',
          withIcon: false,
          transactionStatusColor: statusColor ?? AppColors.greenLv1,
        ),
      ],
    );
  }

  transaction() {
    return Column(
      children: [
        AppTransactionInfo(
          dotChillPadding: EdgeInsets.all(0),
          dotColor: AppColors.transparent,
          textTitle: 'Transaction ID',
          transactionId: transactionId ?? '',
          transactionStatus: 'Paid',
          onlyTrasactionId: true,
          onTapCopyButton: onTapCopyTransactionId ?? () {},
        ),
        AppTransactionInfo(
          dotChillPadding: EdgeInsets.all(0),
          dotColor: AppColors.transparent,
          textTitle: 'Biaya Admin',
          transactionId: adminPayment ?? '',
          transactionStatus: 'Paid',
          withIcon: false,
          onlyTrasactionId: true,
        ),
        AppTransactionInfo(
          dotChillPadding: EdgeInsets.all(0),
          dotColor: AppColors.transparent,
          textTitle: 'Tagihan',
          transactionId: bill ?? '',
          transactionStatus: 'Paid',
          withIcon: false,
          onlyTrasactionId: true,
        ),
        const AppDivider(
          color: AppColors.blackLv7,
        ),
        AppTransactionInfo(
          dotChillPadding: EdgeInsets.all(0),
          dotColor: AppColors.transparent,
          textTitle: 'Total',
          transactionId: count ?? '',
          onTapCopyButton: onTapCopyCount ?? () {},
          transactionStatus: status ?? '',
          transactionStatusColor: statusColor ?? AppColors.greenLv1,
        ),
      ],
    );
  }
}
