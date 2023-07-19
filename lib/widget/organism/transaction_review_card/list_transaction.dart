import 'package:flutter/material.dart';

import '../../../app/theme/app_colors.dart';
import '../../atom/app_divider.dart';
import '../../molecule/app_card_container.dart';
import '../../molecule/app_transaction_info.dart';

class ListTransaction extends StatelessWidget {
  final String email;
  final String number;
  final String gender;
  final String registerDate;
  final String status;
  final Color? statusColor;

  const ListTransaction({
    super.key,
    required this.email,
    required this.number,
    required this.registerDate,
    required this.status,
    required this.gender,
    this.statusColor,
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
          AppTransactionInfo(
            dotChillPadding: EdgeInsets.all(0),
            dotColor: AppColors.transparent,
            textTitle: 'Email',
            transactionId: email,
            transactionStatus: 'Paid',
            onlyTrasactionId: true,
          ),
          AppTransactionInfo(
            dotChillPadding: EdgeInsets.all(0),
            dotColor: AppColors.transparent,
            textTitle: 'Whatsapp',
            transactionId: number,
            transactionStatus: 'Paid',
            onlyTrasactionId: true,
          ),
          AppTransactionInfo(
            dotChillPadding: EdgeInsets.all(0),
            dotColor: AppColors.transparent,
            textTitle: 'Gender',
            transactionId: gender,
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
            transactionId: registerDate,
            transactionStatus: status,
            withIcon: false,
            transactionStatusColor: statusColor ?? AppColors.greenLv1,
          ),
        ],
      ),
    );
  }
}
