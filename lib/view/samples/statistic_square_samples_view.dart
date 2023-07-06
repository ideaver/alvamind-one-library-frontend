import 'package:flutter/material.dart';
import 'package:laundry_net/app/theme/app_colors.dart';
import 'package:laundry_net/view/samples/sample_wrapper.dart';
import 'package:laundry_net/widget/atom/app_statistic_square.dart';

class StatisticSquareSamplesView extends StatefulWidget {
  const StatisticSquareSamplesView({Key? key}) : super(key: key);

  static const routeName = '/statistic-square-samples';

  @override
  State<StatisticSquareSamplesView> createState() =>
      _StatisticSquareSamplesViewState();
}

class _StatisticSquareSamplesViewState
    extends State<StatisticSquareSamplesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Statistic Square Samples')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            statisticSquare(),
            customStatisticSquare(),
          ],
        ),
      ),
    );
  }

  Widget statisticSquare() {
    return const SampleWrapper(
      title: 'Default Statistic Square',
      widget: AppStatisticSquare(
        title: 'JUMLAH MESIN',
        subTitle: 'mesin',
        data: '43',
      ),
    );
  }

  Widget customStatisticSquare() {
    return const SampleWrapper(
      title: 'Custom Statistic Square',
      widget: AppStatisticSquare(
        title: 'TOTAL REPORT',
        subTitle: 'report',
        data: '100',
        colors: [AppColors.redLv2, AppColors.redLv1],
        icon: Icons.dashboard,
        iconColor: AppColors.redLv1,
      ),
    );
  }
}
